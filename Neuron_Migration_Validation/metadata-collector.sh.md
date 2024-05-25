# Script

```bash
dir=$(pwd)
var="USING CHARACTER SET  ASCII
DEFINE JOB EXPORT_DELIMITED_FILE
DESCRIPTION 'Export rows from a Teradata table to a unformatted file'  (  DEFINE SCHEMA FILE_SCHEMA  (
 db_name varchar(200),
 table_name varchar(200),
 columns_name varchar(200),
 distinct_count varchar(500),
 sum_value varchar(500)
);
DEFINE OPERATOR SQL_SELECTOR
TYPE SELECTOR  SCHEMA FILE_SCHEMA ATTRIBUTES
(
  VARCHAR PrivateLogName = 'selector_log',
  VARCHAR TdpId = '172.30.16.36',
  VARCHAR UserName = 'NeuronMigrationUser',
  VARCHAR UserPassword = 'NeuMigSSprd@360',
  VARCHAR SelectStmt = '$1'

);
DEFINE OPERATOR FILE_WRITER TYPE DATACONNECTOR CONSUMER SCHEMA \*  ATTRIBUTES
(
  VARCHAR PrivateLogName = 'dataconnector_log',
  VARCHAR DirectoryPath = '$dir/tpt_downloads/metadata',
  VARCHAR FileName = '$2',
  VARCHAR Format = 'Delimited',
  VARCHAR OpenMode = 'WriteAppend',
  VARCHAR TextDelimiter = '^',
  VARCHAR CharacterSet = 'ANSI',
  VARCHAR OpenQuoteMark ='""',
  VARCHAR CloseQuoteMark ='""',
  VARCHAR QuotedData = 'Yes'
  );
APPLY TO OPERATOR (FILE_WRITER)
SELECT \* FROM OPERATOR (SQL_SELECTOR);

);"
rm $dir/tpt_downloads/metadata_query/$2.tpt
echo $var > $dir/tpt_downloads/metadata_query/$2.tpt
```

## Script Explanation
This script seems to be generating a Teradata Parallel Transporter (TPT) script dynamically based on input parameters. Let's break down what each part does:

```bash
dir=$(pwd)
```
This line gets the current working directory and assigns it to the variable `dir`.

```bash
var="..."
```
This block defines a multiline string variable named `var`. The string contains the dynamically generated TPT script.

```bash
rm $dir/tpt_downloads/metadata_query/$2.tpt
```
This line removes any existing TPT script file with the same name as the second argument passed to the script (`$2`) from the `tpt_downloads/metadata_query` directory.

```bash
echo $var > $dir/tpt_downloads/metadata_query/$2.tpt
```
This line writes the content of the variable `var`, which represents the dynamically generated TPT script, to a file named based on the second argument passed to the script (`$2`) in the `tpt_downloads/metadata_query` directory.

The TPT script itself defines a job named `EXPORT_DELIMITED_FILE` which exports rows from a Teradata table to an unformatted file. It defines a schema for the output file and specifies two operators:

1. `SQL_SELECTOR`: This operator executes a SQL statement (`$1`) to select data from Teradata.
2. `FILE_WRITER`: This operator writes the selected data to a delimited file. It specifies various attributes such as the directory path, file name (`$2`), format, text delimiter, character set, etc.

Finally, the `APPLY TO OPERATOR` statement connects the `FILE_WRITER` operator to the `SQL_SELECTOR` operator, indicating that the output of the SQL query should be written to the file by the `FILE_WRITER` operator.

#### "var" part Explanation
Certainly! Let's break down the `var` part of the script:

```bash
var="USING CHARACTER SET  ASCII
DEFINE JOB EXPORT_DELIMITED_FILE
DESCRIPTION 'Export rows from a Teradata table to a unformatted file'  (  DEFINE SCHEMA FILE_SCHEMA  (
 db_name varchar(200),
 table_name varchar(200),
 columns_name varchar(200),
 distinct_count varchar(500),
 sum_value varchar(500)
);
DEFINE OPERATOR SQL_SELECTOR
TYPE SELECTOR  SCHEMA FILE_SCHEMA ATTRIBUTES
(
  VARCHAR PrivateLogName = 'selector_log',
  VARCHAR TdpId = '172.30.16.36',
  VARCHAR UserName = 'NeuronMigrationUser',
  VARCHAR UserPassword = 'NeuMigSSprd@360',
  VARCHAR SelectStmt = '$1'

);
DEFINE OPERATOR FILE_WRITER TYPE DATACONNECTOR CONSUMER SCHEMA \*  ATTRIBUTES
(
  VARCHAR PrivateLogName = 'dataconnector_log',
  VARCHAR DirectoryPath = '$dir/tpt_downloads/metadata',
  VARCHAR FileName = '$2',
  VARCHAR Format = 'Delimited',
  VARCHAR OpenMode = 'WriteAppend',
  VARCHAR TextDelimiter = '^',
  VARCHAR CharacterSet = 'ANSI',
  VARCHAR OpenQuoteMark ='""',
  VARCHAR CloseQuoteMark ='""',
  VARCHAR QuotedData = 'Yes'
  );
APPLY TO OPERATOR (FILE_WRITER)
SELECT \* FROM OPERATOR (SQL_SELECTOR);

);"
```

Here's a breakdown of what each part does:

1. `USING CHARACTER SET ASCII`: This specifies the character set to be used for the TPT job as ASCII.

2. `DEFINE JOB EXPORT_DELIMITED_FILE`: This begins the definition of the TPT job named `EXPORT_DELIMITED_FILE`.

3. `DESCRIPTION 'Export rows from a Teradata table to a unformatted file'`: This provides a description of the job.

4. `DEFINE SCHEMA FILE_SCHEMA`: This defines the schema for the output file. It specifies the column names and their data types.

5. `DEFINE OPERATOR SQL_SELECTOR`: This defines an operator named `SQL_SELECTOR`, which is of type `SELECTOR`. It executes a SQL statement provided as the first argument to the script (`$1`) to select data from Teradata.

6. `DEFINE OPERATOR FILE_WRITER`: This defines an operator named `FILE_WRITER`, which is of type `DATACONNECTOR CONSUMER`. It writes data to a file. Various attributes are specified for this operator, including the directory path, file name (provided as the second argument to the script, `$2`), format, text delimiter, character set, etc.

7. `APPLY TO OPERATOR (FILE_WRITER) SELECT * FROM OPERATOR (SQL_SELECTOR);`: This statement connects the `FILE_WRITER` operator to the `SQL_SELECTOR` operator. It indicates that the output of the SQL query executed by the `SQL_SELECTOR` operator should be written to the file by the `FILE_WRITER` operator.

In summary, the `var` part defines a TPT job that exports rows from a Teradata table to an unformatted file. It specifies the schema for the output file, SQL query to select data, and attributes for writing data to the file.
