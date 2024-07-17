#!/bin/bash

<<disclaimer
Create Directories Using Shell Script:
Write a bash script createDirectories.sh that, when executed with three arguments (directory name, start number of directories, and end number of directories), creates a specified number of directories with a dynamic directory name.
Example 1: When executed as ./createDirectories.sh day 1 90, it creates 90 directories as day1 day2 day3 ... day90.
Example 2: When executed as ./createDirectories.sh Movie 20 50, it creates 31 directories as Movie20 Movie21 Movie22 ... Movie50.
disclaimer

#directory_name=$1
#start_no=$2
#end_no=$3

function create_dir {

	read -p "Enter Directory Name " directory_name
	read -p "Enter Starting  Directory Number " start_no
	read -p "Enter Ending Directory Number " end_no
for(( i=start_no; i<=end_no; i++ ))
	do
		mkdir -p "${directory_name}_${i}";
	done
echo "Directory Creater : ${directory_name}_${start_no} to ${directory_name}_${end_no}"
}

function del_dir {
read -p "Enter Directory name to delete " del
rm -r $del
echo "$del Deleted Successfully"
}

case "$1" in
	c)
	create_dir
	;;
	d)
	del_dir
	;;
	*)
	echo "Give 'c' as argument to creater a directory | or | Give 'd' as an argument to delete a directory"
esac

