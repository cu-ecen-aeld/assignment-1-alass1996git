#!/bin/bash
num_args=$#;
if [ $num_args != "2" ]
then
   echo "number of arguments does not equal 2"
   echo $num_args
   exit 1
fi

writefile=$1;
writestr=$2;

echo $writestr > $writefile

exit 0
