#!/bin/bash

DISK_USAGE=$(df -ht | grep xfs)
DISK_THRESHOLD=5 #real project, it usually 75

while IFS= read -r line #IFS,internal field seperator, empty it will ignore while space. -r is for not to ignore special charectors like /
do
    echo $line
done <<< $DISK_USAGE
