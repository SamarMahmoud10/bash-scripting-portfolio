#!/usr/bin/env bash
declare -A server_ips=([web-01]="192.168.1.10" [db-01]="192.168.1.20")

# -v checks if a variable or array key is set
if [[ -v server_ips["db-02"] ]]; then
    echo "DB-02 exists."
else
    echo "DB-02 not found in our list."
fi
