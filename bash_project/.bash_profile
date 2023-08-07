#Greet the user
echo "Hello $USER"

#Define an environment variable called COURSE_ID
export COURSE_ID="DevOpsBootcampElevation"

#check if token file exist if not print Warning 
if [-f "$HOME/.token" && $(stat -c '%a' $HOME/.token) !="600"]
then
echo 'Warning: .token file has to open permissions'
fi

unmask 0006

#add to path
export PATH=$PATH:/home/$USER/usercommands
date -u --iso-8601=seconds

#create alias
alias ltxt="ls *.txt"

#check if temp exist if exist remove content
if [! -d $HOME/tmp]
then
mkdir $HOME/tmp
else
rm -rf $HOME/tmp/*
fi

#kill process thats runs on port 8080
pi=lsof -i:8080
if [! -z $pi]
then
kill -9 $pi
fi
