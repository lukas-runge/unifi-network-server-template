#/bin/bash

# Check on which OS we are running
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    MSYS_NT*)   machine=Git;;
    *)          machine="UNKNOWN:${unameOut}"
esac

# Check if not running on Mac or Linux and exit with error
if [ "$machine" != "Mac" ] && [ "$machine" != "Linux" ]; then
    echo "Running on $machine, this script only works on Mac and Linux"
    exit 1
fi

# Generate secure password
declare PWGEN_CMD="docker run --rm ghcr.io/komed-health/pwgen"
declare PW=$($PWGEN_CMD 20 2> /dev/null)

# Create .env file
echo MONGO_PASS=$PW > .env
echo UNA_UID=$(id -u) >> .env
echo UNA_GID=$(id -g) >> .env
