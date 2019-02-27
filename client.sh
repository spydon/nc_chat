#!/bin/bash

trap hackers INT
trap hackers SIGTSTP

function hackers() {
  # Do nothing, ctrl-c etc shouldn't kill it
  echo "God damn hackers, hackers everywhere!"
}

clear
while :
do
  mawk -W interactive '$0="Bob: "$0' | nc 192.168.1.2 13337
done;
