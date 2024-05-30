#!/bin/bash

echo checking nohupfile

file="/home/nallaperumal/apps/cassandra/apache-cassandra-4.0.11/bin/nohup_copy.out"

if [ -f $file ]; then
	rm $file && echo "Removed existing file"
else
   echo "File Not Present"
fi
