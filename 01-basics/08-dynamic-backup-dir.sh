#!/usr/bin/env bash
# 1. Get today's date using the 'date' command and store it in a variable.
today=$(date +"%Y-%m-%d")
# 2. Create a dynamic directory name
backup_dir="backup-$today"
# 3. Print what we are about to do
echo "Creating backup directory: $backup_dir"
# 4. Execute the command
mkdir "$backup_dir"
echo "Backup directory created successfully."
