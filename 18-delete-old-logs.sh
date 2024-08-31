#!/bin/bash

SOURCE_DIR=/home/ec2user/logs

if [ -d $SOURCE_DIR ]
then
    echo "$SOURCE_DIR Exists"
else
    echo "$SOURCE_DIR Not Exists"
    exit 1
fi