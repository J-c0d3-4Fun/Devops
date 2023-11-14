#!/bin/bash

#this runs the top command and redirects the results to result.txt
#runs the top command for 1 iteration
top -n 1 > result.txt

#once the script is complete it wil read both comments below
echo "you just ran a shell script"

echo "The results have been redirected to result.txt"
