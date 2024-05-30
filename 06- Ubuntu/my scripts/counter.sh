#!/bin/bash

count=0
total=34
pstr="[==========================================================================================================]"

while [ $count -lt $total ]; do
  sleep 0.5 # this is work
  count=$(( $count + 1 ))
  pd=$(( $count * 73 / $total ))
  printf "\r%3d.%1d%% %.${pd}s" $(( $count * 100 / $total )) $(( ($count * 1000 / $total) % 10 )) $pstr
done

## your real command here, instead of sleep
#sleep 7 &
#PID=$!
#i=1
#sp="/-\|"
#echo -n ' '
#while [ -d /proc/$PID ]
#do
#  printf "\b${sp:i++%${#sp}:1}"
#done
