#test
# your solution here

#!bin/bash

echo "Hello $USER"


export COURSE_ID=DevOpsBootcampElevation


if [ $(stat -c %a "$HOME/.token"  ) != 600 ]
then
    echo "Warning: .token file has too open permissions"
fi


umask 006

 
export PATH=$PATH:$HOME/usercommands



echo "The current date is  "

date -Is


touch a

alias ltxt="ls *.txt"

DIR=$HOME/tmp
if [ -d "$DIR" ]    
then
  chmod 777 $DIR
  rm -rf $DIR/*
  echo "tmp directory content deleted successfully"
else
  mkdir $DIR
  chmod 777 $DIR
  echo " tmp directory was created successfully"
fi





P_ID=$(lsof -t -i :8080)

if [ $P_ID > 0 ]
then
   kill -9 $P_ID
else
   echo "there is no process"
fi
# the end
