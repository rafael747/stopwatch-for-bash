# stopwatch-for-bash
A simple stopwatch alias for bash

# usage

## Execute the script

    ./sw.sh
    
> Copy or link to your path
    
## Use as a alias

    alias sw='echo "#### StopWatch #####";a=`date +%s`;while true; do b=`date +%s`;bn=`date +%3N`;date -d@"$(($b - $a))" -u +%H:%M:%S|tr -d "\n";echo -n ".$bn";sleep .1;echo -en "\r";done'

> Add the alias to .bashrc
