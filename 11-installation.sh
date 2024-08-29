#!/bin/bash

USERID=$(id -u)
#echo "Userid is: $USERID"

if [ $USERID -ne 0 ]
then
    echo "please run this script with root preveleges"
    exit 1

fi

dnf install git -y