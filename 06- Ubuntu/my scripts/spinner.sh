##!/bin/bash
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

##!/usr/bin/env bash
#
#show_spinner()
#{
#  local -r pid="${1}"
#  local -r delay='0.75'
#  local spinstr='\|/-'
#  local temp
#  while ps a | awk '{print $1}' | grep -q "${pid}"; do
#    temp="${spinstr#?}"
#    printf " [%c]  " "${spinstr}"
#    spinstr=${temp}${spinstr%"${temp}"}
#    sleep "${delay}"
#    printf "\b\b\b\b\b\b"
#  done
#  printf "    \b\b\b\b"
#}
#
#("$@") &
#show_spinner "$!"

#for i in $(seq 1 10); do
#  # Display the loading timer
#  echo "Loading..."
#  sleep 1
#done

#
#phases=(
#    'Locating Jebediah Kerman...'
#    'Motivating Kerbals...'
#    'Treating Kessler Syndrome...'
#    'Recruiting Kerbals...'
#)
#
#for i in $(seq 1 100); do
#    sleep 0.1
#
#    if [ $i -eq 100 ]; then
#        echo -e "XXX\n100\nDone!\nXXX"
#    elif [ $(($i % 25)) -eq 0 ]; then
#        let "phase = $i / 25"
#        echo -e "XXX\n$i\n${phases[phase]}\nXXX"
#    else
#        echo $i
#    fi
#done | whiptail --title 'Kerbal Space Program' --gauge "${phases[0]}" 6 60 0

for i in $(seq 1 100)
do
    sleep 0.1
    echo $i
done | whiptail --title 'Test script' --gauge 'Running...' 6 60 0
