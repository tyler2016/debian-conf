#!/usr/bin/env bash
#

file=$1
old_time_stamp=''
while true; do
    new_time_stamp=`stat ${file} | tail -3 | head -1 | cut -d ' ' -f 2`
    if [ "x"${new_time_stamp} = "x"${old_time_stamp} ]; then
        echo `date`' wait for your edit and save.'
        sleep 3
        continue
    fi
    xelatex $file
    old_time_stamp=$new_time_stamp
done
