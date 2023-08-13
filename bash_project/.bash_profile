#!/bin/bash

    echo "Hello $USER"
        export COURSE_ID="DevOpsBootcampElevation"
        echo $COURSE_ID
            if [ -e "$HOME/.token" ]; then
                permissions=$(stat -c "%a" "$HOME/.token")
                    if [ "$permissions"!="600" ]; then
                        echo  "Warning: .token file has too open permissions"
                    fi
            fi

    umask 0006

    export PATH="$PATH:/home/$USER/usercomands"
    newdate=$(date -u +"%Y-%m-%dT%H:%M:%S+00:00")
    echo the current date is : $newdate
    alias ltxt='ls *.txt'
   if [ -d ~/tmp ] ;then
        rm -f ~/tmp/*
    else
       # mkdir ~/tmp
    fi
        process_id=$(lsof -i:8080)
        if [ -n "$process_id" ]; then
        kill -9 $process_id
        fi
