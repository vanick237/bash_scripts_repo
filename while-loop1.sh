#!/bin/bash

#Description: W
#Author: Vanick
#Date:08/24/2024


counter=0

while [ ${counter} -lt 20 ];
do 
	echo " ${counter}. This is working fine ....."
	echo " "
	sleep 1
counter=$((counter + 1))
done


