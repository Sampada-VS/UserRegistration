#!/bin/bash -x

echo "'User Registration form'"
read -p "Enter password : " password
if [[ ${#password} -ge 8 && $password == *[[:upper:]]* ]]
then
	echo "Valid"
else
	echo "Password should contain min 8 char and atleast one uppercase."
fi

