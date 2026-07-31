#!/usr/bin/env bash
declare -A server_ips=([web-01]="192.168.1.10")
declare -A users=( [admin]="ahmed" )

echo "Web-01 IP is: ${server_ips[web-01]}"
echo "Admin user is: ${users[admin]}"
