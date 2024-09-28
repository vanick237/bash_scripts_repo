#!/bin/bash
#
#Description: Install packages using a for loop.
#Author: Vanick
#Date: 09/04/2024


packages=("wget" "apache2") # We use space in bash as a delimiter between elements.

for package in ${packages[@]}; do   #The @ is used do access each element of the list. 
	sudo apt-get update -y
	sudo apt-get install ${package}
done


