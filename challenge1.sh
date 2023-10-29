#!/bin/bash

# Muhammad Arya Java
# Rakamin - Kalbe Nutritionals Data Engineer Project Based Internship Program
# Final Task
# Challenge 1

path="/hdfs/data/data1"
name_of_directory="data1"

# Cek apakah direktori sudah ada
if [ -d "$path/$name_of_directory" ]; then
    echo "There is $name_of_directory Directory Exists!"
else
    echo "$name_of_directory Directory Not Exists!"
    
    # Buat direktori jika tidak ada
    mkdir -p "$path/$name_of_directory"
    echo "$name_of_directory Directory Created!"
fi
