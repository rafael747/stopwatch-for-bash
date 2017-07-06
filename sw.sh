#!/bin/bash

echo "#### StopWatch #####"

# Initial Time
a=`date +%s`

while true
do 
  # Current Time
  b=`date +%s`
  bn=`date +%3N`
  
  # Calculate shift and remove trailing '\n'
  date -d@"$(($b - $a))" -u +%H:%M:%S|tr -d "\n"
  echo -n ".$bn"
  
  # Wait 100 ms
  sleep .1
  
  # return to first char
  echo -en "\r"
done
 
