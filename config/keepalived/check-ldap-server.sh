#!/bin/bash
ldapPid=$(ps -ef |grep slapd|grep -v grep|awk '{print $2}' |grep -v PID)
if [ "$ldapPid" == "" ]; then
   systemctl stop keepalived
   echo "slapd stop"
   exit 1
else
   exit 0
fi
