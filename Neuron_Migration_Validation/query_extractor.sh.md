#neuronscripts
```sh
rm /app/home/arcion/validation-ci/metadata_validation/tpt_downloads/metadata_query/$1_$2.txt
dir=$(pwd)
var="
```
```sql
USING CHARACTER SET  ASCII
DEFINE JOB EXPORT_DELIMITED_FILE
DESCRIPTION 'Export rows from a Teradata table to a unformatted file'  (  DEFINE SCHEMA FILE_SCHEMA  (
            query_ varchar(2000)
);
DEFINE OPERATOR SQL_SELECTOR
TYPE SELECTOR  SCHEMA FILE_SCHEMA ATTRIBUTES
(
  VARCHAR PrivateLogName = 'selector_log',
  VARCHAR TdpId = '172.30.16.36',
  VARCHAR UserName = 'NeuronMigrationUser',
  VARCHAR UserPassword = 'NeuMigSSprd@360',
  VARCHAR SelectStmt = 'select ''locking row for access select ''''''|| DatabaseName ||'''''' db_name,''''''|| TableName || '''''' table_name,''''''|| ColumnName ||'''''' column_name, cast(count(distinct('' ||ColumnName || '')) as varchar(500)),cast(''|| case when COLUMNTYPE in (''DECIMAL'') then ''sum('' || ColumnName||'')'' else ''0'' end ||'' as varchar(500)) sum_value from ''|| case when DatabaseName = ''NeuronDWH'' then ''NeuronDWH_DirtyRead_V'' else DatabaseName end ||''.''||TableName ||'';'' query_ from ( select DatabaseName, TableName,ColumnName, CASE WHEN COLUMNTYPE=''CF'' THEN ''CHAR'' WHEN COLUMNTYPE=''CV'' THEN ''VARCHAR'' WHEN COLUMNTYPE=''D'' THEN ''DECIMAL'' WHEN COLUMNTYPE=''TS'' THEN ''TIMESTAMP'' WHEN COLUMNTYPE=''I'' THEN ''INTEGER'' WHEN COLUMNTYPE=''I2'' THEN ''SMALLINT'' WHEN COLUMNTYPE=''DA'' THEN ''DATE'' END AS COLUMNTYPE from dbc.columnsv where upper(DatabaseName) = upper(''$1'') and upper(TableName) = upper(''$2'') and upper(ColumnName) not like ''%ID%'' and upper(ColumnName) not like ''%VRSNO%'' and COLUMNTYPE<>''TS'') oo;'

);
DEFINE OPERATOR FILE_WRITER TYPE DATACONNECTOR CONSUMER SCHEMA \*  ATTRIBUTES
(
  VARCHAR PrivateLogName = 'dataconnector_log',
  VARCHAR DirectoryPath = '$dir/tpt_downloads/metadata_query',
  VARCHAR FileName = '$1_$2.txt',
  VARCHAR Format = 'Delimited',
  VARCHAR OpenMode = 'Write',
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

```sh
rm tpt_downloads/metadata_query/$1_$2.tpt

echo $var > tpt_downloads/metadata_query/$1_$2.tpt
sed -i 's/\\//g' tpt_downloads/metadata_query/$1_$2.tpt
tbuild -f tpt_downloads/metadata_query/$1_$2.tpt -j $1_$2
```
# Script Explanation
This script seems to be performing a series of operations on a file located at `tpt_downloads/metadata_query/$1_$2.tpt`. Let's break down each line:

1. `rm tpt_downloads/metadata_query/$1_$2.tpt`: This line removes (deletes) a file named `$1_$2.tpt` from the directory `tpt_downloads/metadata_query/`. The variables `$1` and `$2` are likely placeholders that are expected to be replaced with actual values when the script is executed.

2. `echo $var > tpt_downloads/metadata_query/$1_$2.tpt`: This line writes the value of the variable `$var` to a file named `$1_$2.tpt` in the directory `tpt_downloads/metadata_query/`. Again, the variables `$1` and `$2` are placeholders that should be substituted with actual values. The `echo` command is used to print the value of `$var`, and the `>` operator redirects this output to the specified file.

3. `sed -i 's/\\//g' tpt_downloads/metadata_query/$1_$2.tpt`: This line uses the `sed` command to perform a search and replace operation in the file `$1_$2.tpt`. It replaces all occurrences of the backslash character (`\`) with nothing (i.e., removes them). The `-i` option tells `sed` to edit the file in place.

4. `tbuild -f tpt_downloads/metadata_query/$1_$2.tpt -j $1_$2`: This line invokes the `tbuild` command with the `-f` option to specify the input file as `$1_$2.tpt` in the `tpt_downloads/metadata_query/` directory. It also uses the `-j` option to specify the job name as `$1_$2`. Again, `$1` and `$2` are placeholders that should be replaced with actual values.

Overall, this script appears to be manipulating a file, removing backslashes from its contents, and then passing it as input to the `tbuild` command. The specific details of what `$var`, `$1`, `$2`, and the `tbuild` command represent would depend on the context in which this script is being used.