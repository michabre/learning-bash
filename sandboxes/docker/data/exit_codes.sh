#!/bin/bash

package=htop

apt-get install -y $package >> /mnt/data/logs/package_install_results.log

if [ $? -eq 0 ]
then
    echo "The installation of $package was successful."
    echo "The new command is available here:"
    which $package 
else
    echo "$package failed to install"
fi
