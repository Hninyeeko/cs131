In the "movies.csv" dataset, I identified a few problems that needed to be fixed. 
A few problems in the data set:

- Dates are not consistent: some dates are missing end dates eg. (2021 - ), some dates only have one year eg. (2021) and some dates give a time period eg. (2010-2022).
- Data is missing in the Gross column for most movies.
- Data is missing in the Ratings column for some movies.
- Some movies don't have a plot line, or it says "Add a plot".
- Some movies don't have Stars names.

For this assigment, I wrote a shell script to focus on solving the first problem by deleting the second column of the dataset in which the inconsistent dates are stored.

Script Logic Breakdown

input_file="momvies.csv": This line assigns the name of the movies.csv file to the input_file variable.

output_file="output.csv": This line assigns the name of the output file to the output_file variable.

column_to_remove=2: This line assigns the column number to be removed to the column_to_remove variable. Here, I've set it to 2, to remove the second column in the CSV file, which contains the dates.

awk -v col="$column_to_remove": This is the start of the awk command. I created an awk variable col and set it to the value of column_to_remove, which equals 2.

'BEGIN {FS=OFS=","}: Then I set the input field separator (FS) and output field separator (OFS) to a comma, to split the CSV file into fields based on the comma delimiter.

{for (i = 1; i <= NF; i++) if (i != col) printf "%s%s", $i, (i == NF ? ORS : OFS)}: This is the main part of the awk command, where the script loops through each field (column) in a line of the CSV file.

for (i = 1; i <= NF; i++): This loop iterates through all fields (columns) in the current line, where NF means the number of fields.

if (i != col): This condition checks if the current field's index i is not equal to the value in col (in this case, 2). If the condition is met, the field is printed.

printf "%s%s", $i, (i == NF ? ORS : OFS): This line prints the current field, followed by either the ORS  (if it's the last field in the line when i == NF), or the OFS (if it's not the last field).

"$input_file" > "$output_file": This part of the script redirects the output of the awk command to the file specified in $output_file.


