#!/usr/bin/env bash
servers=("web-01" "web-02" "db-01" "monitoring")

# ${#servers[@]} means "Number of elements in servers array"
echo "Total servers: ${#servers[@]}"
