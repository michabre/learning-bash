#!/bin/bash

# for num in  {1..5}
# do
#     echo $num
#     sleep 1
# done
# echo "this is outside the for loop."

# create a bunch of empty log files
# for num in {1..5}
# do
#     cd /mnt/data/logs
#     touch $(date +%S)-$num.log
#     sleep 1
# done

# create a tarball of every log file 
for file in /mnt/data/logs/*.log
do
    tar -czvf $file.tar.gz $file
done