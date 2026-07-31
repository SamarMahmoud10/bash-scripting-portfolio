#!/usr/bin/env bash
# -A means associative array (Key-Value)
declare -A server_ips

# Add elements (key inside brackets)
server_ips[web-01]="192.168.1.10"
server_ips[web-02]="192.168.1.11"
server_ips[db-01]="192.168.1.20"

# Declare and initialize an associative array in a single line
declare -A users=( [admin]="ahmed" [guest]="user1" [test]="user2" )
