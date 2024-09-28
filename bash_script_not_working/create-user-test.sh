#!/bin/bash

#NOTE: This script does not work properly. It needs some debugging. 

#Description: Create a user account if it does not exists.
#Auther: Vanick
#Date: 08/19/2024

read -p "Enter a username: " username

cat /etc/passwd | awk -F ":" '{print $1}' | grep ${username} > name


if [ -n $(cat name) ]; then
	echo "User already exists"
	exit
else
	echo "Creating user account ....."
	sleep 1
	sudo useradd ${username}
	echo "Create password for ${username}"
	sudo passwd ${username}
	echo "Done!"
fi

