#! bin/bash

USER=$User

cat permission.txt | grep -i $USER 

if 
[[ $? -eq 0 ]]
thgen
echo "You have permission to run this job"
else
echo "You don't have permission to run this job"
exit 1
fi
