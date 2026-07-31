#!/usr/bin/env bash
servers=("web-01" "web-02" "db-01" "monitoring")

echo "Total servers before: ${#servers[@]}"

# Append a new element to the end of the array
servers+=("new-server-04")

echo "Total servers after: ${#servers[@]}"
echo "The last server is: ${servers[4]}" # Index updated to 4 since it's the 5th element
