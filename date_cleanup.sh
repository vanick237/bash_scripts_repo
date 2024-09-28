#!/bin/bash
#
#Description: Clean up data older than 7 days in a specified directory.
#Author: Vanick
#Date: 09/04/2024


directory=/home/${USER}/dir1

find ${directory} -type f -mtime +7 -exec rm {} \; #Be carefull running this script.
if [ $? -eq 0 ]; then
	echo "Files older than 7 days removed."
else 
	echo "Something wrong happened..."
fi 





