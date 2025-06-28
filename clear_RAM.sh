#!/bin/sh
#Calculates the current percentage of free RAM available in system
_perc=$1
_ram_avl=`free | grep Mem | awk '{print $4/$2 * 100.0}' | awk -F'.' '{print $1}'`
if [ $_ram_avl -le $_perc ]; then
  logger -s "RAM available in system is below $_perc percentage clearing cache and freeing up memory"
  sync && echo 3 > /proc/sys/vm/drop_caches
fi;
