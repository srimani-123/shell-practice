#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"


VALIDATE(){
if [ $1 -ne 0 ]
then 
    echo -e "$2 ... $R  Failure"
    exit 1
else
    echo "$2 .... $G Success"
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
    echo -e "MySQL is already ... $Y Installed"
fi

################ GIT ################

dnf list installed git

if [ $? -ne 0 ]
then
    dnf install git -y
    VALIDATE $?
else
    echo -e "Git is already ... $Y installed"
fi