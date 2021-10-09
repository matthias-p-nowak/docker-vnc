#!/bin/bash
set -eE

/opt/scripts/run-vnc.sh &
sudo updatedb &

############## shutdown ###############
echo "waiting for shutdown"
touch /tmp/now
while [ \! -e /input/stop -o /input/stop -ot /tmp/now ]
do
  sleep 5
done
echo "shutting down"
