#!/bin/bash


a=$1
b=$2

function with_arguments {
	echo "comparing $a & $b"

	if [ $a -gt $b ]; then
		echo "$a is greater than $b"
	else 
		echo "$b is greater than $a"
	fi
}
<<waste
if [ $1 -eq 0 ]; then 
	with_arguments
else
	echo "Please provide numbers to compare as argument"
fi
waste

with_arguments

