#!/bin/bash
auto_file="/home/ubuntu/shell-scripts/auto_shell.txt"
for user in $(awk -F: '$3>1000 {print $1}' /etc/passwd) ; do
	password=$(openssl rand -base64 4)
	echo "$user:$password" |sudo chpasswd
	echo "user:$user pass:$password">>$auto_file
done
echo " ">>$auto_file
echo "password changed successfully"
