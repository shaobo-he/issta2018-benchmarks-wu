# set -x
file="$1" 
name=${file%.*}
unroll=$name"_unloop.bc"
bc=$name".bc"
out=$name"_out.bc"
outopt=$name"_out_opt.bc"
tmps=$name".s"
exeorig=$name"_orig_exe"
exe=$name"_exe"
exeopt=$name"_opt_exe"

echo "generate bc file:"
clang -emit-llvm -c $1 -o $unroll
opt -mem2reg -simplifycfg -loops -always-inline -lcssa -loop-simplify -loop-rotate -loop-unroll  $unroll -o $bc 

#rm -f $unroll
llvm-dis < $unroll > $name"_unloop.ll"
llvm-dis < $bc > "$name.ll"

echo "run wo opt:"
opt -load LLVMBranch.so -branch < $bc > $out -time-passes 
echo "run with opt"
opt -load LLVMBranch_opt.so -branch < $bc > $outopt -time-passes
echo "original file size:"
stat --printf="%s" $bc
echo "\nwo opt file size:"
stat --printf="%s" $out
echo "\nwith opt file size:"
stat --printf="%s" $outopt
