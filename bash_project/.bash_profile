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

    umask 006

    export PATH="$PATH:/home/$USER/usercomands"
    date -u +"%Y-%m-%dT%H:%S%z"
    alias ltxt='ls *.txt'
   if [ -d ~/tmp ] ;then
        rm -f ~/tmp/*
    else
        mkdir ~/tmp
    fi
        process_id=$(lsof -i :8080)
        if [ -n "$process_id" ]; then
        kill $process_id
        fi
