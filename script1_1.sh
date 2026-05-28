#!/bin/bash

<< info
write a script to create a user if not exists and then transfer the username and password to the
user_info_1 file to save them but this uses a different approach

info

read -p "enter the name of the user" name
if id $name ; then
	echo "user already exists"
else 
	echo "user doesnt exists"
	read -p "enter the password to create the user" password
	sudo useradd -m -s /bin/bash $name
	echo -e "$password\n$password" | sudo passwd $name
	echo "Username:$name Password:$password">>user_info_1.txt

fi

