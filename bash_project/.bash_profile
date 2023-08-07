#!/bin/bash


USER="$LOGNAME"
echo "Hello ${USER}"


export COURSE_ID=DevOpsBootcampElevation

# Check the permissions of .token
token_file="$HOME/.token"
if [ -e "${token_file}" ]; then
    token_perms=$(stat -c "%a" "${token_file}")
    if [ "$token_perms" -ne 600 ]; then
      echo "Warning: .token file has too open permissions"
    fi
fi

# Set the umask
umask 0006

# Add /home/<username>/usercommands to the end of the PATH
export PATH="${PATH}:/home/${USER}/usercommands"

# Print the current date
current_date=$(date -u +"%Y-%m-%dT%H:%M:%S+00:00")
echo "The current date is: ${current_date}"

# Define a command alias for ltxt
alias ltxt='ls *.txt'

# Create ~/tmp


if [ ! -d "${HOME}/tmp" ]; then
  mkdir "${HOME}/tmp"
fi

# CLear ~/tmp
if [ -d "${HOME}/tmp" ]; then
  rm -rf "${HOME}/tmp/*"
fi



# Kill 8080 if exist
pid=$(lsof -t -i :8080)
if [ -n "${pid}" ]; then
  kill -9 "${pid}"
fi
