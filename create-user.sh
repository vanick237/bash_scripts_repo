#!/bin/bash

#Description: Create a user if it does not exists and assign a password to it.
#Author: Vanick
#Date: 08/20/2024

echo " "
read -p "Enter user name: " uname  # Takes user input and assigns it to a variable.

if grep -q "^$uname:" /etc/passwd  # -q of grep suppresses output and only returns the exit status. ^ greps from the first column. 

then
	echo " "
	echo "User already exists."
	exit
else
	echo " "
	echo "Creating account for $uname! "
	sudo useradd -m $uname
	if [ $? -eq 0 ]; then
		echo " "
		echo "User successfully created. Let's now setup a password."
		sleep 2
		sudo passwd $uname
		echo " "
		echo "Done!"
	else
		echo "Account creation failled."
		exit
	fi
	
fi



