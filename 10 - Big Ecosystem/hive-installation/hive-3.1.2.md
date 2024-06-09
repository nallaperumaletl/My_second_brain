
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


> [!TIPS] Starting beeline
> #### Before starting beeline we have to start hiveserver2
> in cmd -> hiveserver2 
> then use the below command



### beeline_in_hive
>beeline
  to connect hive

>!connect jdbc:hive2://localhost:10001

>username
>press enter it will connect to hive


### Pyhive

[pyhive for hive](https://www.google.com/search?sca_esv=b5d4132325b5528c&sxsrf=ADLYWIJNYTUxvkYQ6bzDa54WIyzdpQtaIA:1717913226306&q=how+to+configure+thrift+server+in+hive+and+connect+beeline&tbm=vid&source=lnms&prmd=visnbmtz&sa=X&ved=2ahUKEwjCou-87c2GAxW8zzgGHRLnDhcQ0pQJegQIDBAB&biw=1920&bih=907&dpr=1#fpstate=ive&vld=cid:b9d4ea2e,vid:nkK1kA2GMss,st:0)

