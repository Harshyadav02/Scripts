# !/bin/bash
DATE=$(date +%Y-%m-%d)

read -p "Hello, How many folders do you want to create?: " Number_of_Folders;
read -p "Okay ,tell me the path where you want to create folder?? " Location;

i=0
while ((i < Number_of_Folders))
do

   if [[ -d "$Location" ]];then
      
      NEXT_DATE_Folder=$(date +%Y-%m-%d -d "$DATE + $i day")

      mkdir "$Location/$NEXT_DATE_Folder"
      i=$(($i + 1))

   else
      echo "Please enter a valid Path"
      break;
   fi
   
done

