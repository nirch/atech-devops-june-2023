# your solution here...
#!/bin/bash
#edit bash_profile

# 1. Hello user name
echo "Hello $(whoami)"

# 2. build env var
export COURSE_ID="DEVOpsBootCampElevation"

# 3. check permission for .token
if [ -f ~/.token ]
then
    if [[ $(stat -c "%a" .token) != "600" ]]
    then
        echo 'Worning: .token file has too open permiisions'
    fi
fi

# 4. change umask
umask 0006

# 5. Edit PaTH
PATH=$PATH:/home/$(whoami)/usercommands

# 6. date ISO 8601 format
echo "The current date is : $(date -u +\"%Y-%m-%dT%H:%M:%SZ\")"

# 7. ltxt alias
alias ltxt="echo *.txt"

# 8. creat if doesnt exist ~/tmp and clean
cat /dev/null > ~/tmp || mkdir tmp

# 9. kill process in 8080
fuser -k 8080/tcp

#end