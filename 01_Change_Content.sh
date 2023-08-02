# !/bin/bash
read -p "Enter the file name in which you want to change the data: " file_name
read -p "Enter the content you want to change: " current_data
read -p "Enter the content you want to replace with: " new_data


sed -i "s/$current_data/$new_data/ig" $file_name   