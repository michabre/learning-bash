#!/bin/bash

myname="Michael"
favemovie="Inception"

# store the output of a command
files=$(ls)
now=$(date +'%m/%d/%Y')

echo "Hello, my name is $myname"
echo "My favourite movie is $favemovie"

echo $now

echo "current user: $(whoami)"
