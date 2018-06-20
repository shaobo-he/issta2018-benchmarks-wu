#!/bin/bash
set -x


simulate()
{
simout=sim.txt
if [ "$3" ]
then
    simout=$3
fi
$GEM5_PATH/build/X86/gem5.debug $GEM5_PATH/configs/example/se.py --cmd=$1 --cpu-type=TimingSimpleCPU --caches --cacheline_size=64 --l1d_size=32kB --l1d_assoc=512 > $simout
echo -e "Simulation for file $1:\n" >> $2

grep -m 1 "system.cpu.committedInsts " m5out/stats.txt >> $2
grep -m 1 "system.cpu.icache.overall_hits::total" m5out/stats.txt >> $2
grep -m 1 "system.cpu.icache.overall_misses::total" m5out/stats.txt >> $2
grep -m 1 "system.cpu.dcache.overall_hits::total" m5out/stats.txt >> $2
grep -m 1 "system.cpu.dcache.overall_misses::total" m5out/stats.txt >> $2
grep -m 1 "system.cpu.numCycles" m5out/stats.txt >> $2
}

armcompile()
{
llc -march=arm $1 -o tmp.s
arm-linux-gnueabi-gcc -O0 tmp.s -static -o $2
rm tmp.s
}

x86compile()
{
llc $1 -o tmp.s
gcc -O0 tmp.s -static -o $2 -lstdc++
rm tmp.s
}

runonfile()
{	
	if [ "$2" ]
	then
		file1=$1"1.cpp"
		file2=$1"2.cpp"
	else
		file1=$1"1.c"
		file2=$1"2.c"
	fi

	base=$1
	stat=$base".txt"

	bc1=$base"1.bc"
	bc2=$base"2.bc"

	out1=$base"1_out.bc"
	outopt1=$base"1_out_opt.bc"
	out2=$base"2_out.bc"
	outopt2=$base"2_out_opt.bc"

	exeorig="orig_exe"
	exe="out_exe"
	exeopt="opt_exe"
	./runOpt.sh $file1 1&> runopt_out.txt
	wo_time=$(grep -m 2 "Sensitive Branch Mitigation Pass" runopt_out.txt | sed 's/[()a-zA-Z]//g' |awk 'NR==1{print $(NF-1)}')
	w_time=$(grep -m 2 "Sensitive Branch Mitigation Pass" runopt_out.txt | sed 's/[()a-zA-Z]//g' |awk 'NR==2{print $(NF-1)}')
	rm runopt_out.txt

	bc_size=$(stat --printf="%s" $bc1 | grep -o -E '[0-9]+')
	outbc_size=$(stat --printf="%s" $out1 | grep -o -E '[0-9]+')
	outopt_size=$(stat --printf="%s" $outopt1 | grep -o -E '[0-9]+')
	./runOpt.sh $file2

	echo "======================================" >> $stat

	x86compile $bc1 $exeorig
	simulate $exeorig $stat  org1.txt
	orig1_num_miss=$(grep -m 1 "system.cpu.dcache.overall_misses::total" m5out/stats.txt | grep -o -E '[0-9]+')
	orig1_num_cycle=$(grep -m 1 "system.cpu.numCycles" m5out/stats.txt | grep -o -E '[0-9]+')

	x86compile $out1 $exe
	simulate $exe $stat out1.txt
	out1_num_miss=$(grep -m 1 "system.cpu.dcache.overall_misses::total" m5out/stats.txt | grep -o -E '[0-9]+')
	out1_num_cycle=$(grep -m 1 "system.cpu.numCycles" m5out/stats.txt | grep -o -E '[0-9]+')

	
	x86compile $outopt1 $exeopt
	simulate $exeopt $stat opt1.txt
	opt1_num_miss=$(grep -m 1 "system.cpu.dcache.overall_misses::total" m5out/stats.txt | grep -o -E '[0-9]+')
	opt1_num_cycle=$(grep -m 1 "system.cpu.numCycles" m5out/stats.txt | grep -o -E '[0-9]+')


	x86compile $bc2 $exeorig
	simulate $exeorig $stat org2.txt
	orig2_num_miss=$(grep -m 1 "system.cpu.dcache.overall_misses::total" m5out/stats.txt | grep -o -E '[0-9]+')
	orig2_num_cycle=$(grep -m 1 "system.cpu.numCycles" m5out/stats.txt | grep -o -E '[0-9]+')

	x86compile $out2 $exe
	simulate $exe $stat out2.txt
	out2_num_miss=$(grep -m 1 "system.cpu.dcache.overall_misses::total" m5out/stats.txt | grep -o -E '[0-9]+')
	out2_num_cycle=$(grep -m 1 "system.cpu.numCycles" m5out/stats.txt | grep -o -E '[0-9]+')

	x86compile $outopt2 $exeopt
	simulate $exeopt $stat opt2.txt
	opt2_num_miss=$(grep -m 1 "system.cpu.dcache.overall_misses::total" m5out/stats.txt | grep -o -E '[0-9]+')
	opt2_num_cycle=$(grep -m 1 "system.cpu.numCycles" m5out/stats.txt | grep -o -E '[0-9]+')

	echo $1", "$bc_size", "$orig1_num_miss", "$orig1_num_cycle", "$orig2_num_miss", "$orig2_num_cycle", "$wo_time", "$outbc_size", "$out1_num_miss", "$out1_num_cycle", "$out2_num_miss", "$out2_num_cycle", "$w_time", "$outopt_size", "$opt1_num_miss", "$opt1_num_cycle", "$opt2_num_miss", "$opt2_num_cycle >>result.csv
}


c_benchmarks="chronos/aes   chronos/des   chronos/des3  chronos/anubis  chronos/cast5  chronos/cast6  chronos/fcrypt  chronos/khazad  
supercop/aes_core  supercop/cast-ssl
appliedCryp/3way appliedCryp/des appliedCryp/loki91
libg/camellia libg/des  libg/seed  libg/twofish
"
cpp_benchmarks="botan/aes     
botan/cast128 botan/des 
botan/kasumi
botan/seed
botan/twofish
"

if [ "$1" ]
then
	runonfile $1
else
	echo "filename, orig_bc_size, orig1_num_miss, orig1_num_cycle, orig2_num_miss, orig2_num_cycle, wo_time, outbc_size, out1_num_miss, out1_num_cycle, out2_num_miss, out2_num_cycle, w_time, opt_size, opt1_num_miss, opt1_num_cycle, opt2_num_miss, opt2_num_cycle" > result.csv
	for file in $c_benchmarks
	do
	    runonfile $file
	done
	for file in $cpp_benchmarks
	do
	    runonfile $file cpp
	done
fi
