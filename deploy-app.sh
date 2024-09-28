#!/bin/bash

#Description: Deploy an Application in linux using apache2. After running the script, open a browser and type the IP of your server to see the result.
#Author: Vanick
#Date: 08/21/2024

apt update -y

apt install wget unzip apache2 -y

wget https://github.com/utrains/static-resume/archive/refs/heads/main.zip

unzip main.zip

rm -rf /var/www/html/*

cp -r static-resume-main/* /var/www/html

systemctl start apache2

systemctl enable apache2









