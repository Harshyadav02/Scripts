#!/bin/bash

# Set up Git to use credential caching with an effectively infinite timeout
git config --global credential.helper 'cache'

read -p "Enter the file name with extension : " file_name
read -p "Enter the comment you want to add to the file : " comment

git add "$file_name" 
git commit -m "$comment"
git push
