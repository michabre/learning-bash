#!/bin/bash

name=$1
clothing=$2
user=$(whoami)
directory=$(pwd)
current=$(date)

echo "Good morning $name"

sleep 1

echo "You're looking good today $name"

sleep 1

echo "But $name, you looked better with the red $2" 

sleep 2

echo "You are currently logged in as $user and are in $directory on $current"
