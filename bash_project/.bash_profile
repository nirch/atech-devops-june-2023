# your solution here...
# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

echo "Hello $USER"

COURSE_ID=DevOpsBootcampElevation

if [ -f "$HOME/.token" ]
 then
 PREM=$(stat $HOME/.token -c %a)
 if [ $PREM -ne 600 ]
  then
  echo "Warning: .token file has too open permissions"
 fi
fi

umask 0006

PATH=$PATH:$HOME/usercommands

echo "The current date is: $(date -Iseconds)"
 
alias ltxt="ls *.txt"

if [ -d $HOME/tmp ]
 then
 rm -rf $HOME/tmp/*
 else
 mkdir $HOME/tmp
fi

if fuser 8080/tcp
 then
 fuser -k 8080/tcp
fi

