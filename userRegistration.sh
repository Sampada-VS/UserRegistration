#!/bin/bash -x

echo "'User Registration form'"
read -p "Enter First name : " first_name
if [[ $first_name =~ ^[[:upper:]]{1}[[:lower:]]{2,}$ ]]
then
	echo "Valid"
else
	echo "First name should start with capital letter and need min 3 characters."
fi

read -p "Enter Last name : " last_name
if [[ $last_name =~ ^[[:upper:]]{1}[[:lower:]]{2,}$ ]]
then
	echo "Valid"
else
	echo "Last name should start with capital letter and need min 3 characters."
fi
