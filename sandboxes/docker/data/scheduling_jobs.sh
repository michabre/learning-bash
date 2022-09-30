#!/bin/bash

# example to run with at command
# execute the script at 14:57
# at 14:57 -f ./scheduling_jobs.sh
#
# run the command at 18:00 on November 22, 2022
# at 18:00 112222 -f ./scheduling_jobs.sh

# remove job by ID
# atrm <Job ID>

logfile=./logs/job_results.log

echo "The script ran at the following time $(date)" >> $logfile