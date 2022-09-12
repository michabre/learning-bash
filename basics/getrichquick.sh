#!/bin/bash

echo "What is your name?"
read name

echo "How old are you?"
read age

echo "Hello $name, you are $age years old"

#echo "Using $SHELL as $USER in directory: $PWD on machine $HOSTNAME"
#echo $twitter

sleep 2

getrich=$((( $RANDOM % 15) + $age ))

echo "$name, you will become a millionaire when you are $getrich years old."
