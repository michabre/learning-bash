#!/bin/bash

# -eq = equals
# -ne = not equal
# -gt = greater than

mynum=201

# check value of mynum
if [ $mynum -eq 200 ]
then
    echo "The condition is true"
else
    echo "The variable does not equal 200"
fi


# check if file exists
if [ -f /mnt/data/myfile ]
then 
    echo "The file exists"
  else
    echo  "The file does not exist"
fi


command=htop
# check if command exists
if command -v $command
then
    echo "$command is available. Let's run it..."
else
    echo "$command is not available. Installing it..."
    apt update && apt-get install -y $command
fi

$command