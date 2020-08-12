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

read -p "Enter Email-id : " email_id
if [[ $email_id =~ ^[0-9a-zA-Z]+([._+-][0-9a-zA-Z]+)*@[0-9a-zA-Z]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2})?$ ]]
then
	echo "Valid"
else
	echo "Invalid email-id"
fi

read -p "Enter mobile number : " mob_num
if [[ $mob_num =~ ^[1-9]{2,3}[" "][7-9]{1}[0-9]{9}$ ]]
then
	echo "Valid"
else
	echo "Mobile number should contain country code follow by space and 10 digit number."
fi

read -p "Enter password : " password
num_sp_char=$(($(tr -d [[:alnum:]] <<< $password | wc -m )-1))
if [[ ${#password} -ge 8 && $password == *[[:upper:]]* && $password == *[0-9]* && $num_sp_char -eq 1 && $password != *[" "]* ]]
then
	echo "Valid"
else
	echo "Password should contain min 8 char, atleast one uppercase and number, exactly 1 special char with no spaces."
fi

