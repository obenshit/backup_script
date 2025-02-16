#!/bin/bash

#mkdir "backup" if not exist
mkdir -p backup

#string with the source filename
FILE=$1

#check if the user input filename
if [ -z "$1" ]; then
	echo "Usage: $0 <filename>"
	exit 1
fi

#check if the file exist
if [ ! -f "$FILE" ]; then
	echo "Error: File '$FILE' not found!"
	exit 1
fi

#make a TIMESTAMP in YYYY-MM-DD_HH-MM-SS Format
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

#Save onlt the file name without path
FILENAME=$(basename "$FILE")

#Make the file with the new name (with the timestamp)
BACKUP_FILE="backup/${TIMESTAMP}_${FILENAME}"

#Make Backup
cp "$FILE" "$BACKUP_FILE"


echo "Backup created: $BACKUP_FILE"


