# your solution here...
#!/bin/bash
echo "Hello $USER"
export COURSE_ID="DevOpsBootcampElevation"
if [ -d ~/.token ]
 if [[ $(stat -c '%a' ~/.token) != "600" ]]
 then
   echo ".token file has too open permissions"
 fi
fi


umask 0022


export PATH=$PATH:/home/$USER/usercommands

date -u --iso-8601=seconds

alias ltxt='ls *.txt'

if [ ! -d ~/tmp ]
then
 mkdir ~/tmp
else
 rm -rf ~/tmp/*
fi

if lsof -Pi :8080 -sTCP:LISTEN -t >/dev/null
then
  echo "Killing the proc running on 8080.."
  kill -9 $(lsof -t i:8080)
else
  echo "No proc running on port 8080"
fi