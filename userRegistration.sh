#!/bin/bash -x

echo "'User Registration form'"
read -p "Enter password : " password
if [[ ${#password} -ge 8 ]]
then
	echo "Valid"
else
	echo "Password should contain minimum 8 characters."
fi

