#!/bin/bash

# Input file
file="$1"

# Read the file and duplicate every other letter
while read line; do
  for ((i=0; i<${#line}; i+=2)); do
    printf "%s%s" "${line:$i:1}" "${line:$i:1}"
  done
  printf "\n"
done < "$file"
