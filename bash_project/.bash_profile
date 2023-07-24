#!/bin/bash

export COURSE_ID=DevOpsBootcampElevation
DATE_UTC=$(date -Isecond -u)
echo Hello $USER
OWNER_PERMISSIONS=$(stat -c '%a' $HOME/.token 2> /dev/null)
if [ $? -eq 0 ]
then
if [ $OWNER_PERMISSIONS != 600 ]
then
        echo "Warning: .token file has too open permissions"
fi
fi
 umask 006
PATH=$PATH:/home/$USER/usercommands
echo The current date is: $DATE_UTC
alias ltxt="ls *.txt"
mkdir ~/tmp 2> /dev/null
if [ $? -gt 0 ]
then
    rm -r ~/tmp/*
fi
if [ lsof -i :8080]
then
        fuser -k 8080
fi