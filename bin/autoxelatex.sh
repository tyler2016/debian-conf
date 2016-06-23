#!/usr/bin/env bash
#

file=$1
old_time_stamp=''
while true; do
    new_time_stamp=`stat ${file} | tail -3 | head -1 | cut -d ' ' -f 2`
    if [ "x"${new_time_stamp} = "x"${old_time_stamp} ]; then
        continue
    fi
    old_time_stamp=$new_time_stamp
    xelatex $file
    echo `date`' wait for your edit and save.'
done
