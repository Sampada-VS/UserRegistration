#!/bin/bash -x

echo "'User Registration form'"
read -p "Enter password : " password
num_sp_char=$(($(tr -d [[:alnum:]] <<< $password | wc -m )-1))
if [[ ${#password} -ge 8 && $password == *[[:upper:]]* && $password == *[0-9]* && $num_sp_char -eq 1 && $password != *[" "]* ]]
then
	echo "Valid"
else
	echo "Password should contain min 8 char, atleast one uppercase and number, exactly 1 special char with no spaces."
fi

