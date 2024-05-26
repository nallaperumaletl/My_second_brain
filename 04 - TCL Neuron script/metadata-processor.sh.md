
# Script

```bash
#!/bin/bash

# Specify the path to your text file
dir=$(pwd)

file_path="${dir}/tpt_downloads/metadata_query/$1.txt"

# Check if the parent directory doesn't exists
if [ ! -d "$dir/tpt_downloads/validation_data" ]; then
    # If the directory doesn't exist, create it
    mkdir "$dir/tpt_downloads/metadata"
    echo "Metadata Directory created successfully."
else
    echo "Metadata Directory already exists."
fi

# Check if the file exists
if [ -e "$file_path" ]; then
  # Open the file for reading
  exec 3< "$file_path"
  #Removing older metadata
  rm "${dir}/tpt_downloads/metadata/$1.csv"
  echo "${dir}/tpt_downloads/metadata/$1.csv"
  # Creating file to store count
  touch "${dir}/tpt_downloads/metadata/$1.csv"

  # Iterate through each line
  while read -r line <&3; do
    # Process each line (replace this with your own logic)
    line_rep=$(echo $line | sed -e s"/'/''/g" -e s'/"//'g)
    echo $line_rep
    sh "$dir/metadata-collector.sh" "$line_rep" "$1.csv"
    #echo "Processing line: $line"
  done

  # Close the file descriptor
  exec 3<&-
else
  echo "File not found: $file_path"
fi

/app/home/arcion/mysql/bin/./mysql   --local-infile=1  -u NeuronMigrationUser -h 100.84.58.98 -P 3306 -pNrnprd324@ -s -e " LOAD DATA LOCAL  INFILE '$dir/tpt_downloads/metadata/$1.csv'    INTO TABLE  EDW_Migration_Validation_PROD.SIT_table_metadata_TD (Database_name, table_name, column_name, distinct_count,sum_value ) CHARACTER SET ASCII FIELDS TERMINATED BY '^'  ESCAPED BY '\\\\' Optionally ENCLOSED BY '\"' LINES TERMINATED BY '\n' NULL defined by '';"
```

---
# Script Explanation line by line:

Sure, let's break down the code line by line:

```bash
#!/bin/bash
```
This line indicates that the script should be executed using the Bash shell.

```bash
# Specify the path to your text file
dir=$(pwd)
```
This line gets the current working directory (`pwd`) and stores it in the variable `dir`.

```bash
file_path="${dir}/tpt_downloads/metadata_query/$1.txt"
```
This line constructs the path to the text file based on the first argument passed to the script (`$1`). It assumes that the text file is located in the `tpt_downloads/metadata_query` directory within the current working directory.

```bash
if [ ! -d "$dir/tpt_downloads/validation_data" ]; then
```
This line checks if the directory `tpt_downloads/validation_data` does not exist.

```bash
mkdir "$dir/tpt_downloads/metadata"
```
If the directory does not exist, this line creates a directory named `metadata` inside the `tpt_downloads` directory.

```bash
echo "Metadata Directory created successfully."
```
This line prints a message indicating that the metadata directory was successfully created.

```bash
else
    echo "Metadata Directory already exists."
fi
```
If the directory already exists, this line prints a message indicating that the metadata directory already exists.

```bash
if [ -e "$file_path" ]; then
```
This line checks if the file specified by `$file_path` exists.

```bash
exec 3< "$file_path"
```
This line opens the file specified by `$file_path` for reading and assigns file descriptor 3 to it.

```bash
rm "${dir}/tpt_downloads/metadata/$1.csv"
```
This line removes any existing CSV file with the same name as the first argument passed to the script (`$1`) from the `tpt_downloads/metadata` directory.

```bash
echo "${dir}/tpt_downloads/metadata/$1.csv"
```
This line prints the path to the CSV file that will be created.

```bash
touch "${dir}/tpt_downloads/metadata/$1.csv"
```
This line creates an empty CSV file with the same name as the first argument passed to the script (`$1`) in the `tpt_downloads/metadata` directory.

```bash
while read -r line <&3; do
```
This line starts a while loop that reads each line from file descriptor 3 (`<&3`) and assigns it to the variable `line`.

```bash
line_rep=$(echo $line | sed -e s"/'/''/g" -e s'/"//'g)
```
This line replaces single quotes (`'`) with double single quotes (`''`) and removes double quotes (`"`) from the current line and stores the modified line in the variable `line_rep`.

```bash
echo $line_rep
```
This line prints the modified line.

```bash
sh "$dir/metadata-collector.sh" "$line_rep" "$1.csv"
```
This line executes another script named `metadata-collector.sh` passing the modified line (`$line_rep`) and the first argument passed to the current script (`$1`) as arguments.

```bash
exec 3<&-
```
This line closes file descriptor 3.

```bash
else
  echo "File not found: $file_path"
fi
```
If the file specified by `$file_path` does not exist, this line prints a message indicating that the file was not found.

```bash
/app/home/arcion/mysql/bin/./mysql --local-infile=1 -u NeuronMigrationUser -h 100.84.58.98 -P 3306 -pNrnprd324@ -s -e " LOAD DATA LOCAL INFILE '$dir/tpt_downloads/metadata/$1.csv' INTO TABLE EDW_Migration_Validation_PROD.SIT_table_metadata_TD (Database_name, table_name, column_name, distinct_count,sum_value ) CHARACTER SET ASCII FIELDS TERMINATED BY '^' ESCAPED BY '\\\\' Optionally ENCLOSED BY '\"' LINES TERMINATED BY '\n' NULL defined by '';"
```
This line executes a MySQL command that loads data from the CSV file created earlier into a specified table in the database. It uses various options to specify the file format and the table structure.
Certainly! Here's an explanation of the MySQL command:

```bash
/app/home/arcion/mysql/bin/./mysql --local-infile=1 -u NeuronMigrationUser -h 100.84.58.98 -P 3306 -pNrnprd324@ -s -e " LOAD DATA LOCAL INFILE '$dir/tpt_downloads/metadata/$1.csv' INTO TABLE EDW_Migration_Validation_PROD.SIT_table_metadata_TD (Database_name, table_name, column_name, distinct_count,sum_value ) CHARACTER SET ASCII FIELDS TERMINATED BY '^' ESCAPED BY '\\\\' Optionally ENCLOSED BY '\"' LINES TERMINATED BY '\n' NULL defined by '';"
```

#### Let's break it down the Above Block:

```bash
/app/home/arcion/mysql/bin/./mysql
```
This is the path to the MySQL client executable.

```bash
--local-infile=1
```
This option enables the MySQL client to load data from local files using the `LOAD DATA LOCAL INFILE` statement. It's set to 1, indicating it's enabled.

```bash
-u NeuronMigrationUser
```
This option specifies the MySQL username (`NeuronMigrationUser`) that the client will use to connect to the database.

```bash
-h 100.84.58.98
```
This option specifies the hostname (`100.84.58.98`) of the MySQL server to connect to.

```bash
-P 3306
```
This option specifies the port (`3306`) on which the MySQL server is listening.

```bash
-pNrnprd324@
```
This option specifies the password (`Nrnprd324@`) for the MySQL user. The `-p` flag indicates that the password follows immediately without any space.

```bash
-s
```
This option, `-s` or `--silent`, suppresses the display of normal MySQL output.

```bash
-e " LOAD DATA LOCAL INFILE '$dir/tpt_downloads/metadata/$1.csv' INTO TABLE EDW_Migration_Validation_PROD.SIT_table_metadata_TD (Database_name, table_name, column_name, distinct_count,sum_value ) CHARACTER SET ASCII FIELDS TERMINATED BY '^' ESCAPED BY '\\\\' Optionally ENCLOSED BY '\"' LINES TERMINATED BY '\n' NULL defined by '';"
```
This part of the command specifies the SQL statement to execute. It loads data from the specified CSV file (`$dir/tpt_downloads/metadata/$1.csv`) into the table `EDW_Migration_Validation_PROD.SIT_table_metadata_TD`. It defines the column names and their corresponding data in the CSV file. The options `CHARACTER SET ASCII`, `FIELDS TERMINATED BY '^'`, `ESCAPED BY '\\\\'`, `Optionally ENCLOSED BY '\"'`, `LINES TERMINATED BY '\n'`, and `NULL defined by ''` specify the format of the CSV file and how it should be parsed.