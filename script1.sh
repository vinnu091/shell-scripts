#!/bin/bash

<< info
write a script to create a user if not exists and then transfer the username and password to the 
user_info file to save them

info

read -p "enter the name of the user" name

if id $name ; then
	echo "user already exists"
else
	echo "user doesnt exists"
	sudo useradd -m -s /bin/bash $name
	password=$(openssl rand -base64 4)
	echo "$name:$password"|sudo chpasswd
	echo "Username:$name Password:$password">>user_info.txt
	echo "user created successfully"
fi
