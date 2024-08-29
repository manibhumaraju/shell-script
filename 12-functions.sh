#!/bin/bash

USERID=$(id -u)
#echo "Userid is: $USERID"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2 is failure..."
        exit 1
    else
        echo "$2 is success"
    fi
}
if [ $USERID -ne 0 ]
then
    echo "please run this script with root preveleges"
    exit 1

fi

dnf list installed git

if [ $? -ne 0 ]
then
    echo "Git is not installed, going to install"
    dnf install git -y
    VALIDATE $? "Installing Git"

dnf list installed mysql

if [ $? -ne 0 ]
then
    echo "MySQL is not installed...going to install"
    dnf install mysql -y
    VALIDATE $? "Installing MySQL"
else
    echo "MySQL is already installed...nothing to do"
fi       