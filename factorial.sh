#!/bin/bash
echo "enter the commit message:"
read user
git add .
git commit -m $user
git push origin master
echo "krishnabose02"
echo "7407c5694fc06f8252bf7b7fcfd05e374e31b14c"