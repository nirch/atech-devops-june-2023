#!/bin/bash

echo "Hello ${USER}"

#export PATH="$HOME/bin:$PATH"
export PATH="$PATH:/home/$USER/usercommands"

#VAR
export COURSE_ID="DevOpsBootcampElevation"

umask 0006


# Get the current user's home directory
#home_dir=$(getent passwd $USER | cut -d: -f6)
#home_dir=$(/home/$USER)

# Check the permissions of the .token file
#token_file="$home_dir/.token"
#permissions=$(ls -l "$token_file" | awk '{print $1}')
# Check if the permissions are 600
#if [ "$permissions" != "600" ]; then
#  echo "Warning: .token file has too open permissions"
#fi

#token file after fixed
token_file="$HOME/.token"
if [[-f "$token_file" ]]; then
    permissions=$(stat -c %a "$token_file")
    if [[ "$permissions" -ne 600 ]]; then
        echo "Warning: .token file has too open permissions"
    fi
fi


#date
current_date=$(date -u +"%Y-%m-%dT%H:%M:%S")
echo "Current date: $current_date"

#alias
alias ltxt='ls *.txt'

# Create the ~/tmp directory if it doesn't exist, or clean it if it exists

tmp_dir="$HOME/tmp"
if [[ -d "$tmp_dir" ]]; then
    rm -rf "$tmp_dir"/*
else
    mkdir "$tmp_dir"
fi


#Kill proccess  that bound to port 8080
process_id=$(lsof -t -i:8080)
if [[ -n "$process_id" ]]; then
    kill "$process_id"
fi