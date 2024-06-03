---
tags:
  - pyspark-tips
  - stickynotes
---

## To start pyspark session in VSCode
#### You can change appName according to your Need.!
```python
import findspark
findspark.init('/home/nalla/apps/spark-3.2.4-bin-hadoop2.7', edit_rc=True)

import pyspark
from pyspark.sql import SparkSession

spark = SparkSession \
      .builder \
      .master("local[1]") \
      .appName("emp_dept") \
      .getOrCreate()

```

> [!TIPS] LOAD FROM LOCAL FILE:
> ## To load data from LOCAL FILE: use file:/// three slashes.. 
>```python
emp_df = spark.read.csv("file:///home/nallaperumal/data_set/Hr-schema/EMPLOYEES_MYSQLDATE.csv",header=True,inferSchema=True)



