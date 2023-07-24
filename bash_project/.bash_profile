#!/bin/bash

export COURSE_ID=DevOpsBootcampElevation
DATE_UTC=$(date -Isecond -u)
echo Hello $USER
OWNER_PERMISSIONS=$(stat -c '%a' $HOME/.token 2> /dev/null)
if [ $OWNER_PERMISSIONS ] && [ $OWNER_PERMISSIONS != 600 ]
then
        echo "Warning: .token file has too open permissions"
fi
umask 006
PATH=$PATH:/home/$USER/usercommands
echo The current date is: $DATE_UTC
alias ltxt="ls *.txt"
mkdir ~/tmp 2> /dev/null
if [ $? -ne 0 ] && [ $(ls -l ~/tmp | wc -l) -ne 1 ]
then
    rm -r ~/tmp/*
fi
PROCESS_ID=$(lsof -t -i :8080)
if [ $PROCESS_ID ]
then
        kill -9  $PROCESS_ID
fi