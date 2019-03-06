#!/bin/bash

#homework_6_part_1

#script that searches for a specific word in a file, displays how many times the word is in the file, and what line the word is on. 
#searching for the word-tomorrow


#read -p "enter word to search for in file $1: " tomorrow

#echo "The word you chose was $tomorrow"

line_numbers=`grep -n -o "$2" $1 | sort -n | uniq -c | cut -d : -f 1 | awk '{print "For line " $2 " the searched word was found " $1 "}'`
echo "Summary for file $1:"
echo "$line_numbers"

