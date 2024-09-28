#!/bin/bash

#Description: This script will backup the content of your home directory to a directory called /home/backup/
#Author: Vanick
#Date: 08/22/2024 

DATE=$(date +"%Y-%m-%d_%H-%M-%S")  #Date format.

HOME_DIR="/home/${USER}"  #Directory to backup.

BACKUP_FILE="/home/backup/Backup_${USER}_${DATE}.tar.gz" #Name and location of the backup file. 

tar -czvf "$BACKUP_FILE" "$HOME_DIR"






