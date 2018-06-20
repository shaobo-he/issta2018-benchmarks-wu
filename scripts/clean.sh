rm m5out/*
for dir in ./*/
do
    dir=${dir%*/}
    rm $dir/*.txt $dir/*.bc $dir/*.ll
done
rm *_exe
