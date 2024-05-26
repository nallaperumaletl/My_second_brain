---
tags:
  - neuronscripts
Related Note: "[[query_extractor.sh]]"
---
#neuronscripts  [[query_extractor.sh]]
# Script

```bash
#1 - Target Database Name
#2 - Target Table Name
#3 - Source Database Name
#4 - Source Table Name

#Extracing table profiling sql queries from teradata
sh  query_extractor.sh $3 $4

# Collecting and loading metadata from teradata
sh metadata-processor.sh $3_$4

#Loading Metadata to singlestore

# Calling credentials file
source "/app/home/arcion/Data-Migration/migration_bkps/Neuron-PROD/cred.conf"

# MySQL command to be executed
mysql_command="call EDW_Migration_Validation_PROD.sp_Metadata_Collector('$1', '$2');"

# MySQL server connection details
user="$SS_DATABASE_USER"
password="$SS_DATABASE_PASSWORD"
host="$SS_DATABASE_HOST"
database="EDW_Migration_Validation_PROD"

#echo $mysql_command
# Execute the command and get the output
output=$(/app/home/arcion/mysql/bin/mysql -u "$SS_DATABASE_USER" -p"$SS_DATABASE_PASSWORD" -h "$SS_DATABASE_HOST" "$database" -e "$mysql_command")
echo $output
```
---


> [!tip]- Script Explanations
> Certainly, let's break down each part of the script in more detail:
> 
> 1. **Extraction of Table Profiling SQL Queries**:
> ```bash
> #Extracing table profiling sql queries from teradata
> sh  query_extractor.sh $3 $4
> ```
> This line invokes another script named `query_extractor.sh` and passes `$3` (Source Database Name) and `$4` (Source Table Name) as arguments. Presumably, `query_extractor.sh` is responsible for generating SQL queries that profile or describe the structure of the specified table in Teradata.
> 
> 2. **Collection and Loading of Metadata from Teradata**:
> ```bash
> sh metadata-processor.sh $3_$4
> ```
> Similar to the previous line, this line calls another script named `metadata-processor.sh`, passing `$3_$4` as an argument. Here, `$3_$4` is the concatenation of the Source Database Name and Source Table Name variables. This script likely processes and loads metadata information from Teradata into some storage or processing system.
> 
> 3. **Loading Metadata to SingleStore**:
> ```bash
> # Calling credentials file
> source "/app/home/arcion/Data-Migration/migration_bkps/Neuron-PROD/cred.conf"
> ```
> This line sources a shell script file `cred.conf`, which presumably contains configuration details such as database credentials for connecting to SingleStore.
> 
> ```bash
> # MySQL command to be executed
> mysql_command="call EDW_Migration_Validation_PROD.sp_Metadata_Collector('$1', '$2');"
> ```
> Here, a MySQL command is constructed and stored in the variable `mysql_command`. This command likely calls a stored procedure `sp_Metadata_Collector` in the `EDW_Migration_Validation_PROD` database, passing `$1` (Target Database Name) and `$2` (Target Table Name) as parameters.
> 
> ```bash
> # MySQL server connection details
> user="$SS_DATABASE_USER"
> password="$SS_DATABASE_PASSWORD"
> host="$SS_DATABASE_HOST"
> database="EDW_Migration_Validation_PROD"
> ```
> These lines retrieve MySQL server connection details such as username, password, host, and database name from the sourced credentials file.
> 
> ```bash
> # Execute the command and get the output
> output=$(/app/home/arcion/mysql/bin/mysql -u "$SS_DATABASE_USER" -p"$SS_DATABASE_PASSWORD" -h "$SS_DATABASE_HOST" "$database" -e "$mysql_command")
> ```
> This line executes the constructed MySQL command using the `mysql` command-line client. It connects to the SingleStore database using the retrieved credentials and runs the MySQL command stored in `mysql_command`. The output of the command is captured in the variable `output`.
> 
> ```bash
> echo $output
> ```
> Finally, the script echoes the output of the MySQL command, presumably for logging or monitoring purposes.
> 
> In summary, this script orchestrates the extraction and processing of metadata from Teradata, followed by the loading of this metadata into SingleStore using a MySQL command executed via the command-line client.
