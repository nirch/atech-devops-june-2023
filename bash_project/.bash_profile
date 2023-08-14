# Greet the user
echo "Hello $USER"

# Define environment variable
export COURSE_ID="DevOpsBootcampElevation"

# Check .token file permissions
if [ -f ~/.token ]; then
    perms=$(stat -c %a ~/.token)
    if [ "$perms" -ne 600 ]; then
        echo "Warning: .token file has too open permissions"
    fi
fi

# Set umask for user and group
umask 0077

# Add directory to PATH
export PATH=$PATH:/home/$USER/usercommands

# Print current date in ISO 8601 format
echo $(date -u +"%Y-%m-%dT%H:%M:%S%z")

# Define command alias
alias ltxt='ls *.txt'

# Create or clean ~/tmp directory
[ -d ~/tmp ] && rm -rf ~/tmp
mkdir -p ~/tmp

# Kill process on port 8080 if it exists
pid=$(lsof -t -i:8080)
[ ! -z "$pid" ] && kill -9 $pid
