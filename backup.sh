#!/bin/bash
#
#Description:
#


FILES_TO_BACKUP=/home/${USER}/*

BACKUP_LOCATION=/home/backup/backup_${USER}.tar.gz 


sudo tar -cvzf "$BACKUP_LOCATION" "$FILES_TO_BACKUP"


