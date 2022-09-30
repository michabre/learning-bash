#!/bin/bash

# using CRON instead of at

logfile=/mnt/data/logs/job_results_2.log

/usr/bin/echo "The script ran at the following time $(/usr/bin/date)" >> $logfile