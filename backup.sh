#!/bin/bash

#Create a Script to Backup All Your Work:



source_dir=$1
target_dir=$2
timestamp=$(date '+%y.%m.%d_%H-%M-%S')

function create_backup {

backup_file="${target_dir}/backup_${timestamp}"


#zip -r "${backup_file}.zip" "${source_dir}"

#to get this line output error into null, so that no one can see the error

zip -r "${backup_file}.zip" "${source_dir}" > /dev/null

        if [ $? -eq 0 ]; then
                echo "Backup created successfully"
        else
                echo "Backup was not perform for  $timestamp"
        fi
}

function rotation {
	bakups=($(ls -t "$target_dir/backup_"*.zip))
	echo "${bakups[@]}"
	if [ "${#bakups[@]}" -gt 2 ]; then
		backup_remove=("$bakups[@]:2")
	for backup in "${backup_remove[@]}";
	do
		rm "$bakups"
	done
	fi
}

create_backup

rotation
