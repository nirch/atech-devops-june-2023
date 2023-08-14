#!/bin/bash
echo "Hello $USER"
export COURSE_ID=DevOpsBootcampElevation

if [ -f ~/.token ]
then
  if [[ $(stat -c '%a' ~/.token) != "600" ]]
  then
     echo "Warning: .token file has too open permissions"
  fi
fi

# 666-006=660 -> 110 110 000
umask 0006

export PATH=$PATH:/home/$USER/usercommands

# UTC=-u , iso8601=-I or --iso-8601=seconds
# 2023-07-31T20:41:50+00:00
date -u --iso-8601=seconds

# all files with .txt extension -> ls *.txt
alias ltxt='ls *.txt'

if [ -d ~/tmp ]
then
   rm -rf ~/tmp/*
else
   mkdir ~/tmp
fi

PROCESS_ID=$(lsof -t -i :8080)
if [ $PROCESS_ID ]
then
   kill -9 $PROCESS_ID
   echo "killed process"
fi
