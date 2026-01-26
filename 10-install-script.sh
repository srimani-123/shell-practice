#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "Error: You must have sudo access to execute the script"
    exit 1
fi

dnf list installed mysql

if [$? -ne 0] #not installed
 dnf install mysql -y
if [$? -ne 0] 
 then 
    echo "Installing Mysql....Failure"
    exit 1
else
    echo "Installing mysql ...Success"
fi
else
    echo "Mysql is already.. Installed"
fi




# if [ $? -ne 0 ]
# then 
#     echo "Installing Mysql...."
#     exit 1
# else
#     echo "Installing mysql ...Success"
# fi

dnf installed git -y

if [$? -ne 0 ]
then
    dnf install git -y
    if [ $? -ne 0 ]
    then 
        echo "Installing Git....Failure"
        exit 1        
    else
        echo "Installing Git ...Success"
    fi
else
    echo "Git is already ....Installed"
fi






if [ $? -ne 0 ]
then 
    echo "Installing Git....Failure"
    
else
    echo "Installing Git ...Success"
fi