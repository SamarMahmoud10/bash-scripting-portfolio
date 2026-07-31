#!/usr/bin/env bash
read -p "Enter your name: " user_name
# Check if the variable is "zero-length" (empty)
if [[ -z "$user_name" ]]; then
    echo "Error: Name cannot be empty. Exiting."
    exit 1
fi
echo "Welcome, $user_name!"
