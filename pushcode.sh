#!/bin/bash -e
echo "Enter commit message"
read message
echo "You have entered commit message :" $message
git add .
git commit -m "$message"
git push origin master