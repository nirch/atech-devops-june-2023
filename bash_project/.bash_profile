#!/bin/bash
echo "HELLO,$USER"
export COURSE_ID="DevOpsBootcampElevation"

if[-f ~/.token]
then
if [[$(stat-c '%a' ~/.token)!="600"]]
echo ".token file has to open permission"
fi

else
echo "file does not exit"
fi

umask 0022

export PATH=$PATH:/home/newone/usercommands

date -u --iso-8601=seconds

alisa ltxt='ls.*txt'

if [!-d ~/tmp]
then
mkdir ~/tmp
else
rm -rf ~/tmp/*
fi

if lsof -Pi:8080 -sTCP:LISTEN -t>/dev/null
then
echo "Killing the proc running on 8080"
kill -9 $(lsof -t i:8080)
else
echo "No proc running on port 8080"
fi