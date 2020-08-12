#!/bin/bash -x

echo "'User Registration form'"
read -p "Enter Email-id : " email_id
if [[ $email_id =~ ^[0-9a-zA-Z]+([._+-][0-9a-zA-Z]+)*@[0-9a-zA-Z]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2})?$ ]]
then
	echo "Valid"
else
	echo "Invalid email-id"
fi

