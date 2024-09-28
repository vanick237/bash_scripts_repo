#!/bin/bash

#DESCRIPTION: This script will provide information about your account and working environment. 
#Author: Vanick
#Date: 08/19/2024


if [ ${USER} = root ]; then
	echo "Hello ${USER}!"
	echo " "
	echo "Your user ID is ${UID}"
	echo " "
	echo "Your shell is ${SHELL}"
	echo " "
	echo "Your home directory is ${HOME}"
	echo " "
	echo "This server host name is ${HOSTNAME}"
else
	echo "You need root permissions to run this script."
fi


# The condition can also be: if [${UID} -ne 0]
