#! bin/bash

USER=$User

cat permission.txt | grep -i $USER 
echo $?
# if 
# [[ $? -eq 0 ]]
#then
#echo "You have permission to run this job"
#else
#echo "You don't have permission to run this job"
#exit 1
#fi
