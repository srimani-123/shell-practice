#!/bin/bash

Number=$1


#-gt, -lt, -eq, -ge, -le
if [$Number -gt 100 ]
then
    echo "Given number is greater than 100"
else
    echo "Given number is less than 100"
fi