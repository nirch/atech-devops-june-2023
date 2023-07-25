
echo "Hello $USER"

COURSE_ID=DevOpsBootcampElevation

if [ -f ~/.token ] then
  if [ $(stat -c "%a" ~/.token -ne 600 ] then
   echo "Warning : .token file has too open permissions"
  fi
fi

umask 117

export PATH=$PATH:/home/$USER/usercommands

date +"%Y-%m-%dT%H:%M:%S%z"

alias ltxt="ls *.txt"


if [ ! -d ~/tmp ]
then
 mkdir ~/tmp
else
  rm ~/tmp/*
fi


temp=$(lsof -i:8080)

if [ -z "$temp" ]
then
 echo "there is no process bound to port 8080"
else
 kill -9 $(lsof -t -i:8080)
fi