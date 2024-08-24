#!/bin/bash
num_args=$#;
if [ $num_args != "2" ]
then
   echo "number of arguments does not equal 2"
   echo $num_args
   exit 1
fi

filesdir=$1;
searchstr=$2;

if test ! -d $filesdir; then
    echo "$filesdir is not a directory"
    exit 1
fi

num_lines=$(grep -r $searchstr $filesdir | wc -l); 
num_files=$(grep -c -r $searchstr $filesdir | wc -l);
echo "The number of files are $num_files and the number of matching lines are $num_lines"
