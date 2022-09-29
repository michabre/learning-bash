#!/bin/bash

# look for files in /etc
# send invvalid output to /dev/null
# 2 == standard error
#
#find /etc -type f 2> /dev/null

# send everything to a file
#
#find /etc -type f &> find_results.txt

# send results to different files based on error code
# 1 === standard output
# 2 === errors
#
find /etc -type f 1>find_results.txt 2>find_errors.txt

# look for an files with .d extension
# and list in a text file
#
#find /etc -name "*.d" > results.txt