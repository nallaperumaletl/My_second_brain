#AUTHOR  : NALLA PERUMAL S
#DATE    : 6-JAN-2024
#PURPOSE : To automate the cassandra service to start

#### Killing Cassandra service,if service already running ####

kill -9 $(ps -ef | grep cassandra | grep -v grep | awk '{print $2}') 2> /dev/null

if [ $? -eq 0 ]; then
  echo Killed cassandra existing process..
fi
echo
echo '**********************************************************************' 
echo  Hello Nalla !!  Starting Cassandra....
echo  $(date)
echo
echo '######################################################################'
echo  please patience we will take care.. 
echo '######################################################################'
echo
sleep 1
cd /home/nalla/apps/cassandra/apache-cassandra-4.0.11/bin/
sleep 1
## nohup.out if already present, it will remove the existing file.

file="/home/nalla/apps/cassandra/apache-cassandra-4.0.11/bin/nohup.out"

if [ -f $file ]; then
	rm $file && echo "Removed existing file: $(basename $file)"
else
   echo "File:$(basename $file) not exist, starting cassandra service on background"
fi
echo 
echo check the cassandra log status of $(basename $file) : under $file
echo
nohup ./cassandra
echo
echo starting cqlsh terminal...
echo
sleep 1  
count=0
total=35
pstr="[==========================================================================================================]"

while [ $count -lt $total ]; do
  sleep 0.5 # this is work
  count=$(( $count + 1 ))
  pd=$(( $count * 73 / $total ))
  printf "\r%3d.%1d%% %.${pd}s" $(( $count * 100 / $total )) $(( ($count * 1000 / $total) % 10 )) $pstr
done


if [ $? -eq 0 ]; then

#gnome-terminal --tab --title="cqlsh-cassandra" --command="bash -c 'cd /home/nallaperumal/apps/cassandra/apache-cassandra-4.0.11/bin; ./cqlsh; $SHELL'"
gnome-terminal --tab --title="cqlsh-cassandra" -- bash -ic 'cd /home/nalla/apps/cassandra/apache-cassandra-4.0.11/bin; ./cqlsh; $SHELL'

fi

gnome-terminal --tab --title="workaround-tab" -- bash -ic 'cd ~; $SHELL'

