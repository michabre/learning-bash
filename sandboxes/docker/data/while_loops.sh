#!/bin/bash

# count to 3
myvar=1
while [ $myvar -le 3 ]
do
    echo $myvar
    myvar=$(( $myvar + 1 ))
    sleep 0.5
done

# check if file exists
while [ -f /mnt/data/testfile ]
do
    echo "As of $(date), the test file exists."
    sleep 3
done

echo "As of $(date), the file no longer exists. Exiting..."

# one liner example
x=1; while  [ $x -le 5 ]; do echo "Welcome $x times" $(( x++ )); sleep 0.5; done

# read file
quote=$1
while IFS= read -r line
do
    echo "$line"
    sleep 1
done < "$quote"