#!/bin/bash -x

echo "'User Registration form'"
read -p "Enter mobile number : " mob_num
if [[ $mob_num =~ ^[1-9]{2,3}[" "][7-9]{1}[0-9]{9}$ ]]
then
	echo "Valid"
else
	echo "Invalid mobile number"
fi

