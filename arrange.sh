#!/bin/bash

for file_path in files/*
do
    if [ ! -f "$file_path" ]
    then
        continue
    fi

    file_name=$(basename "$file_path")
    first_letter=${file_name:0:1}

    lowercase_letter=$(printf "%s" "$first_letter" | tr '[:upper:]' '[:lower:]')

    if [ -d "$lowercase_letter" ]
    then
        mv "$file_path" "$lowercase_letter/"
    fi
done