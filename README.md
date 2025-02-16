# Backup Script

## 📌 Overview
This is a simple Bash script that creates a timestamped backup of a specified file.  
The backup files are stored in a `backup/` directory.

## 🚀 Features
- Checks if the specified file exists before attempting a backup.
- Automatically creates a `backup/` directory if it does not exist.
- Generates a unique timestamp (`YYYY-MM-DD_HH-MM-SS`) for each backup.
- Saves the backup file with the following naming convention:
  
## 🛠️ Usage
Run the script with the file you want to back up as an argument:
```bash
./backup_script.sh <filename>

**## For example:
**./backup_script.sh myfile.txt
This will create a backup in the backup/ folder, named like:
backup/FILE_2025-02-16_14-30-00_myfile.txt



