#!/bin/env bash 
# Anti-pattern: Avoid using for-loop with cat for reading files line-by-line
for line in $(cat /etc/passwd); do
    echo "USER: $line"
done
