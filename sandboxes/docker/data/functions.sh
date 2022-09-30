#!/bin/bash

n1=0
n2=1
nextTerm=0

fibonacci() {
  for (( i=1; i<$count; i++))
  do
    echo $n1
    nextTerm=$(expr $n1 + $n2)
    n1=$n2
    n2=$nextTerm
  done
}

read count # ask how many numbers in sequence to display
fibonacci # run
