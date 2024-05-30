#!/bin/bash

echo
echo current terminal

echo
#gnome-terminal -- `pwd`
#gnome-terminal --tab --title="tab 1" --command="bash -c 'cd /etc; ls; $SHELL'"
gnome-terminal --tab --title="cqlsh-cassandra" --command="bash -c 'cd /home/nallaperumal/apps/cassandra/apache-cassandra-4.0.11/bin; ./cqlsh; $SHELL'"

