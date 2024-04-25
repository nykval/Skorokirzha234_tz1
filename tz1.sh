#!/bin/bash


if [ $# -ne 2 ]; then
    exit 1
fi

input_dir=$1
output_dir=$2

declare -a files_to_copy

function find_files {
    local current_dir=$1
    for item in "$current_dir"/*; do
        if [ -d "$item" ]; then
            find_files "$item" 
        elif [ -f "$item" ]; then
            files_to_copy+=("$item")  
        fi
    done
}

find_files "$input_dir"

function safe_copy {
    local source_file=$1
    local destination_dir=$2
    local file_name=$(basename "$source_file")
    local destination_path="$destination_dir/$file_name"

    local file_counter=0
    while [ -f "$destination_path" ]; do
        file_counter=$((file_counter+1))
        destination_path="${destination_dir}/${file_name%.*}_$file_counter.${file_name##*.}"
    done

    cp "$source_file" "$destination_path"
}


for file_path in "${files_to_copy[@]}"; do
    safe_copy "$file_path" "$output_dir"
done
