#1.1.   Greet the user
echo "Hello $USER"

#1.2.   Define an environment variable called COURSE_ID with a value equal to DevOpsBootcampElevation
export COURSE_ID="DevOpsBootcampElevation"

#1.3.   Given a file called .token in the home directory of the user, check the file permissions.
#       If the octal representation of the permissions set is different from 600 (read and write by the user only)
#       print warning

File=~/.token
if [ -f "$File" ]
then
 if [[ $(stat -c "%a" "$File") != 600 ]]
 then
   echo "Warning: .token file has too open permissions"
 fi
fi

#1.4.   Change the umask of the user such that the default permissions of new created files will be
#       r and w for the user and the group only.

umask 0006

#1.5.   Add /home/<username>/usercommands (while <username> is the linux username) to the end of the PATH env var.
export PATH=$PATH:/home/$USER/usercommands

#1.6.   Print the current date on screen in ISO 8601 format
date -u --iso-8601=seconds

#1.7.   Define a command alias, as follows - whenever the user is executing ltxt,
#       all files with .txt extension are printed (tip: wildcards).

alias ltxt="ls *.txt"

#1.8.   If it doesn’t exist, create the ~/tmp directory on the user’s home dir.
#       If it exists, clean it (delete all the directory’s content without removing the dir itself).

dir=~/tmp
if [ ! -d "$dir" ]
then
 # directory does not exist, create one
 mkdir ~/tmp
else
 rm -rf ~/tmp/*
fi

#1.9.   If it exists, kill the process that is bound to port 8080 (ports will be discussed later on in the course
pid= $(lsof -t -i:8080)
if [ -n "${pid}" ]; then
  kill -p "${pid}"
fi