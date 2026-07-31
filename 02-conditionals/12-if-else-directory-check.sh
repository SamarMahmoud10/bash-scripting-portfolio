#!/usr/bin/env bash
today=$(date +"%Y-%m-%d")
backup_dir="/tmp/backup-$today"
echo "Checking for directory: $backup_dir"
if [[ -d "$backup_dir" ]]; then
    echo "Directory already exists. Nothing to do."
else
    echo "Directory not found. Creating..."
    mkdir "$backup_dir"
    echo "Directory created successfully."
fi
