#!/usr/bin/env bash
# open
# Using builtin command: xdg-open

target=$1
if [ "x"${target} = "x" ]; then
    echo "请指定目标, now exiting"
    exit 101
fi
xdg-open $target 2>/dev/null
