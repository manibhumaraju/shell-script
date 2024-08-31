#!/bin/bash

DISK_USAGE=$(df -hT | grep xfs)
DISK_THRESHOLD=5 #real project, it usually 75

while IFS= read -r line #IFS,internal field seperator, empty it will ignore while space. -r is for not to ignore special charectors like /
do
    USAGE=$(echo $line | grep xfs | awk -F " " '{print $6F}' | cut -d "%" -f1 )
    PARTITION=$(echo $line | grep xfs | awk -F " " '{print $NF}' )
    if [ $USAGE -ge $DISK_THRESHOLD ]
    then
        echo "$PARTITION is more than $DISK_THRESHOLD, Current Value: $USAGE . Please Check"
    fi
done <<< $DISK_USAGE
