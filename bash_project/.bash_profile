#!/bin/bash

echo "sourcing ~/.bash_profile"

USER=$USER
echo "Hello ${USER}"

    umask 0006
# Get the current user's home directory
home_dir=$(getent passwd $USER | cut -d: -f6)
home_dir=$(/home/$USER)

# Check the permissions of the .token file
#token_file="$home_dir/.token"
#permissions=$(ls -l "$token_file" | awk '{print $1}')
# Check if the permissions are 600
#if [ "$permissions" != "600" ]; then
#  echo "Warning: .token file has too open permissions"
#fi

#token file after fixed
token_file="$HOME/.token"
if [ -f "$token_file" ]; then
    permissions=$(stat -c %a "$token_file")
    if [ "$permissions" -ne 600 ]; then
        echo "Warning: .token file has too open permissions"
    fi
fi

export PATH="$HOME/bin:$PATH"

#date on iso 8601
dateq=$(date)
echo "The current date is:"${dateq}

#VAR
export COURSE_ID="DevOpsBootcampElevation"


#alias
alias shortname=ltxt
alias ltxt="ls -la | grep .txt"

# Create the ~/tmp directory if it doesn't exist, or clean it if it exists

if [ ! -d ~/tmp ]; then
  mkdir ~/tmp
else
  rm -rf ~/tmp/*
fi

#Kill proccess  that bound to port 8080
fuser -k 8080/tcp

