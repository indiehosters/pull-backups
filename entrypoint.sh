#!/bin/bash -eux

while true
do
  START=`date +%s`
  rsync -avz --delete -e "ssh -p$PORT" root@$SERVER:/share/ /backups
  sleep $((3600 - `date +%s` + $START))
done
