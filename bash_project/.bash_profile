echo "Hello $USER"

export COURSE_ID=DevOpsBootcampElevation

if [ -f ~/.token ]
 then
  file_per="$(stat -c '%a' ~/.token)"
  if [ $file_per != 600 ]
   then
    echo "Warning: .token file has too open permissions"
  fi
fi

umask 117

export PATH=$PATH:/home/$USER/usercommands

date_now=$(date +"%Y-%m-%dT%H:%M:%S%z")
echo "The current date is: $date_now"

alias ltxt="ls *.txt"

if [ -d ~/tmp ]; then
 rm -rf ~/tmp/*
else
 mkdir ~/tmp
fi

temp=$(lsof -i:8080)

if [ -z "$temp" ]; then
 echo "there is no process bound to port 8080"
else
 kill $(lsof -t -i:8080)
fi