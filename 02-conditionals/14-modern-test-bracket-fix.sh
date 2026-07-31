#!/bin/env bash 
filename="my secret file.txt"
# SAFE: Modern [[ ]] handles spaces without issues
if [[ -f $filename ]]; then
    echo "File exists."
fi
