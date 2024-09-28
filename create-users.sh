#!/bin/bash

#Description: Create multiple users using the for loop.
#Author: Vanick
#Date: 08/24/2024

echo " "
echo "Creating users.."

for name in $(cat list-of-users);
do
	sudo useradd $name
	#sudo userdel -r $name
done	
