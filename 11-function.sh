#!/bin/bash

USERID=$(id -u)

VALIDATE(){
if [ $1 -ne 0 ]
    then 
        echo "Installing MySQL....Failure"
        exit 1
    else
        echo "Installing MySQL....Success"
    fi
}

# Root check
if [ $USERID -ne 0 ]
then 
    echo "Error: You must have sudo access to execute the script"
    exit 1
fi

################ MYSQL ################

dnf list installed mysql

if [ $? -ne 0 ]
then
    dnf install mysql -y
    VALIDATE $?
else
    echo "MySQL is already Installed"
fi

################ GIT ################

dnf list installed git

if [ $? -ne 0 ]
then
    dnf install git -y
    VALIDATE $?
else
    echo "Git is already installed"
fi