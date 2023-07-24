#!/bin/bash

export COURSE_ID=DevOpsBootcampElevation
DATE_UTC=$(date -Isecond -u)
OWNER_PERMESSIONS=$(stat -c '%a' $HOME/.token 2> /dev/null)
echo Hello $USER

if [ $OWNER_PERMESSIONS != 600 ]
then
        echo "Warning: .token file has too open permissions"
fi
 umask 006
PATH=$PATH:/home/$USER/usercommands
echo The current date is: $DATE_UTC
alias ltxt="ls *.txt"
if [ ! mkdir ~/tmp 2> /dev/null ]
then
        cat /dev/null | ~/tmp
fi

if [ lsof -i :8080]
then
        fuser -k 8080
fi