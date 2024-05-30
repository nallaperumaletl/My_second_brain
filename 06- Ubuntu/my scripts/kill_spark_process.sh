#!/bin/bash

echo
echo "checking spark process ( SparkSubmit )"
process=$(jps | grep SparkSubmit | awk '{print $1,$2}')

if [ $? -eq 0 ]; then
	echo Existing process
        echo $process
else
        echo "No spark process found."	
fi

echo
echo
echo

kill -9 $(jps | grep SparkSubmit | awk '{print $1}') 2> /dev/null

if [ $? -eq 0 ]; then
  echo Killed SparkSubmit existing process..
else
  echo No background process for Spark to kill.
fi

echo
