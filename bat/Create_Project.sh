#!/bin/sh
file_dir=`pwd`
echo $file_dir
if [ -d $file_dir/../libs ]   # for file "if [-f /home/rama/file]" 
then 
    echo "libs present"
else
    echo "libs not present"
    mkdir $file_dir/../libs
fi

if [ -d $file_dir/../libs/eigen ]   # for file "if [-f /home/rama/file]" 
then 
    echo "eigen present"
else
    echo "eigen not present"
    mkdir $file_dir/../libs/eigen 
    wget -P "$file_dir/../tmp/" "http://bitbucket.org/eigen/eigen/get/3.3.7.zip"
    unzip $file_dir/../tmp/3.3.7.zip -d $file_dir/../libs/eigen
    cp -a $file_dir/../libs/eigen/eigen-eigen-323c052e1731/. $file_dir/../libs/eigen
    rm -rf $file_dir/../libs/eigen/eigen-eigen-323c052e1731/
    rm -rf $file_dir/../tmp
fi
