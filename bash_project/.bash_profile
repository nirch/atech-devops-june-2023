
echo $USER

COURSE_ID=DevOpsBootcampElevation
filename1="$HOME/.token"

if [ -f "$filename1" ]; then
  file_per="$(stat -c '%a' "$filename1")"
  if [ $file_per -ne 600 ] ; then
    echo "Warning: .token file has too open permissions"
  else
    echo "No file ./token"
  fi
fi

umask 117

export PATH=$PATH:/home/$USER/usercommands

date +"%Y-%m-%dT%H:%M:%S%z"

alias ltxt="ls *.txt"

if [ ! -d ~/tmp ]; then
 mkdir ~/tmp
else
  rm ~/tmp/*
fi

temp='lsof -i:8080'

if [ -z "$temp" ]; then
 echo "there is no process bound to port 8080"
else
 kill -9 $(lsof -t -i:8080)
fi