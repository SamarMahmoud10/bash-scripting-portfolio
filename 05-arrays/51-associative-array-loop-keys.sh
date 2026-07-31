#!/usr/bin/env bash
declare -A server_ips=(
    [web-01]="192.168.1.10"
    [web-02]="192.168.1.11"
    [db-01]="192.168.1.20"
)

# Loop over the KEYS using the exclamation mark sign !
for server in "${!server_ips[@]}"; do
    # $server is the key
    # ${server_ips[$server]} is the value
    echo "Server: $server --- IP: ${server_ips[$server]}"
done
