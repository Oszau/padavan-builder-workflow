#!/bin/bash
percent=$1
_ram_avl=`free | grep Mem | awk '{print $4/$2 * 100.0}' | awk -F'.' '{print $1}'`
if [ $_ram_avl -le $percent ]; then
sync && echo 3 > /proc/sys/vm/drop_caches
fi;
