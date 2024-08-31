#!/bin/bash

SOURCE_DIR=/home/ec2-user/logs

R="\e[31m"
G="\e[32m"
N="\e[0m"

if [ -d $SOURCE_DIR ]
then
    echo "$SOURCE_DIR $G Exists $N"
else
    echo "$SOURCE_DIR $R Not Exists $N"
    exit 1

fi

FILES=$(find $SOURCE_DIR -name "*.log" -mtime +14)
echo "Files: $FILES"