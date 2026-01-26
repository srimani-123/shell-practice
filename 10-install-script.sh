#!/bin/bash

USERID=$(id -u)

# Root check
if [ $USERID -ne 0 ]
then 
    echo "Error: You must have sudo access to execute the script"
    exit 1
fi

################ MYSQL ################

dnf list installed mysql-server &>/dev/null

if [ $? -ne 0 ]
then
    echo "MySQL not installed. Installing..."
    dnf install mysql-server -y

    if [ $? -ne 0 ]
    then 
        echo "Installing MySQL....Failure"
        exit 1
    else
        echo "Installing MySQL....Success"
    fi
else
    echo "MySQL is already installed"
fi

################ GIT ################

dnf list installed git &>/dev/null

if [ $? -ne 0 ]
then
    echo "Git not installed. Installing..."
    dnf install git -y

    if [ $? -ne 0 ]
    then 
        echo "Installing Git....Failure"
        exit 1
    else
        echo "Installing Git....Success"
    fi
else
    echo "Git is already installed"
fi
