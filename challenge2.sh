#!/bin/bash

# Muhammad Arya Java
# Rakamin - Kalbe Nutritionals Data Engineer Project Based Internship Program
# Final Task
# Challenge 2

path="/hdfs/data/data1"
name_of_directory="data1"
filename_excel=daily_market_price.xlsx
source_dir=/local/data/market
target_dir="$path/$name_of_directory"

# Cek apakah direktori sudah ada di $target_dir
if [ -d "$target_dir" ]; then
    echo "There is $name_of_directory Directory Exists!"
else
    echo "$name_of_directory Directory Not Exists!"
    
    # Buat direktori jika tidak ada
    mkdir -p "$target_dir"
    echo "$name_of_directory Directory Created!"
fi

# Cek apakah file excel sudah ada di $source_dir
if [ -e "$source_dir/$filename_excel" ]; then
    # Salin file ke $target_dir
    cp "$source_dir/$filename_excel" "$target_dir"

    # Buat log file jika berhasil
    echo "File Moved Successfully" > "$target_dir/move_log.txt"
    echo "$filename_excel copied to $target_dir"
else
    echo "$filename_excel does not exist in $source_dir"
fi
