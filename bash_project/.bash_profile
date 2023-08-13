#!/bin/bash

# Greet the user
echo "Hello $USER"

# Define environment variable
export COURSE_ID="DevOpsBootcampElevation"

# Check .token file permissions
token_file="$HOME/.token"

if [ -e "$token_file" ]; then
    token_permissions=$(stat -c %a "$token_file")

    if [ "$token_permissions" != "600" ]; then
        echo "Warning: $token_file file has too open permissions"
    fi
else
    echo "$token_file does not exist."
fi

# Set umask
umask 0077

# Add directory to PATH
export PATH="$PATH:/home/$USER/usercommands"

# Print current date in ISO 8601 format
echo "Date: $(date -u +"%Y-%m-%dT%H:%M:%S%z")"

# Define command alias
alias ltxt='ls *.txt'

# Create ~/tmp directory if it doesn't exist, and clean it if it does
tmp_dir=~/tmp
if [ ! -d "$tmp_dir" ]; then
    mkdir "$tmp_dir"
else
    rm -rf "$tmp_dir"/*
fi

# Kill process bound to port 8080 if it exists
process_id=$(lsof -i :8080 -t)
if [ -n "$process_id" ]; then
    kill "$process_id"
fi

# Additional configs
summary = "*Script by Ibraheem G."
echo "$summary"