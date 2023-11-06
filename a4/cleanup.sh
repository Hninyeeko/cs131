#!/bin/bash

# Specify the input file and output file
input_file="movies.csv"
output_file="output.csv"

# Specify the column number to remove (dates are stored in col 2)
column_to_remove=2

# Use awk to remove the specified column
awk -v col="$column_to_remove" 'BEGIN {FS=OFS=","} {for (i = 1; i <= NF; i++) if (i != col) printf "%s%s", $i, (i == NF ? ORS : OFS)}' "$input_file" > "$output_file"
