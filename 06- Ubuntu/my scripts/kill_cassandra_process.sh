echo
echo "checking cassandra process & cqlsh.py process" 
kill -9 $(ps -ef | grep cassandra | grep -v grep | awk '{print $2}') 2> /dev/null

if [ $? -eq 0 ]; then
  echo Killed cassandra existing process..
else
  echo No background process for cassandra to kill.
fi

