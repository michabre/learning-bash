#!/bin/bash

release_file=/etc/os-release

if grep -q "Arch" $release_file
then
    # the host is based on Arch, run the pacman update command
    pacman -Syu
fi

if grep -q "Debian" $release_file || grep -q "Ubuntu" $release_file
then
    # the host is based on Debian or Ubuntu
    # run the apt version of the command
    apt update
    apt dist-upgrade
fi
