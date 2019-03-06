#!/bin/bash

#homework_6_part_2

#script where user input 3 arguments, then prints arguments in reverse order

if [[ "$#" -ne 3 || "$1" == "-h" ]]; then
#help description for user to input three arguments with the file name after arguments
    echo "enter three arguments"
else
#arguments print in reverse order
    echo $3 $2 $1
fi

