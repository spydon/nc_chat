#!/bin/bash

trap hackers INT
trap hackers SIGTSTP

function hackers() {
  # Do nothing, ctrl-c etc shouldn't kill it
  echo "God damn elite hackers, hackers everywhere!\n"
}

clear
while :
do
  mawk -W interactive '$0="Alice: "$0' | nc -l -p 13337 192.168.1.2
done;
