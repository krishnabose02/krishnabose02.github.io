#!/bin/bash -e
echo "Your commit message"
read message
# echo "You have entered commit message :" $message
git add . &> /dev/null
git commit -m "$message" &> /dev/null
git push origin master