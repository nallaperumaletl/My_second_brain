
```c
$HIVE_HOME=/home/nalla/apps/apache-hive-3.1.2-bin
under $HIVE_HOME/bin/schema-tool -dbType mysql -initSchema
```
Now it started creating needed tables/views in mysql

under $HIVE_HOME/scripts/metastore/upgrade/
	1. derby  
	2. mysql 
	3. mssql 
	4.oracle
    5. postgres
    These databases we can configure hive.
    
[[hive-site.xml]] configure this hive-site.xml as per this file.

