#!/bin/bash

# Input file
file="$1"

# Read the file and reverse the words
while read line; do
  echo "$line" | awk '{ for (i = NF; i > 0; i--) printf("%s ", $i); print "" }'
done < "$file"
