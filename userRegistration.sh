#!/bin/bash -x

echo "'User Registration form'"
read -p "Enter password : " password
if [[ ${#password} -ge 8 && $password == *[[:upper:]]* && $password == *[0-9]* ]]
then
	echo "Valid"
else
	echo "Password should contain min 8 char, atleast one uppercase and number."
fi

