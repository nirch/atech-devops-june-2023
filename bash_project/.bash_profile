# your solution here...
echo "Hello $USER"

export COURSE_ID="DevOpsBootcampElevation"

if [-f "$HOME/.token" && $(stat -c '%a' $HOME/.token) !="600"]
then
echo "Warning: .token file has to open permissions"
fi

unmask 0006

export PATH=$PATH:/home/$USER/usercommands
date -u --iso-8601=seconds

alias ltxt="ls *.txt"

if [! -d $HOME/tmp]
then
mkdir $HOME/tmp
else
rm -rf $HOME/tmp/*
fi

pi=lsof -i:8080
if [! -z $pi]
then
kill -9 $pi
fi