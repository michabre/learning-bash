#!/bin/bash

echo "Hello World! This is the Ubuntu Container!"
echo "Today's date: $(date +'%m/%d/%Y')"
echo "Let's get started..."

release_file=/etc/os-release

if grep -q "Debian" $release_file || grep -q "Ubuntu" $release_file
then
    apt update
    apt dist-upgrade
fi

# check if nano exists
if command -v nano
then
    echo "nano is available. Let's run it..."
else
    echo "nano is not available. Installing it..."
    apt-get install -y nano
fi

# check if tar exists
if command -v tar
then
    echo "tar is available. Let's run it..."
else
    echo "tar is not available. Installing it..."
    apt-get install -y tar
fi