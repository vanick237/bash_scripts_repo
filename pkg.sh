#!/bin/bash
# Description: Install packages
# Author: Vanick
# Date: 08/16/2024
echo " "
sudo apt update -y
if [ $? -ne 0 ]; then
	echo "Server update failled....."
	exit
fi

sudo apt install apache2 -y
if [ $? -ne 0 ]; then
        echo "Package installation failled..."
        exit
fi

systemctl start apache2
if [ $? -ne 0 ]; then
        echo "Service could not be started ......"
        exit
fi

systemctl enable apache2
if [ $? -ne 0 ]; then
        echo "Service could not be enabled ....."
        exit
fi



