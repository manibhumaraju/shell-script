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

#dont use line,it is reserved word
while IFS= read -r file #IFS,internal field seperator, empty it will ignore while space. -r is for not to ignore special charectors like /
do
  echo "Deleting file: $file"
  rm -rf $file # after reading lines with using above comman ,then you cameback and place this rm -rf to delete lines 
done <<< $FILES