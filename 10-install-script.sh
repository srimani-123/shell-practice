#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Error:: You should have a sudo access to execute the script"
fi

dnf install mysql -y
