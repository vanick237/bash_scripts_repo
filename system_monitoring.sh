#!/bin/bash

#DESCRIPTION: 
#AUTHOR: Vanick
#Date: 09/02/2024

threshold=10

cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}' | cut -d. -f1) 

if [ ${cpu_usage} -gt ${threshold} ]; then
	echo "High CPU usuge, please act on this: ${cpu_usage}"

fi 

