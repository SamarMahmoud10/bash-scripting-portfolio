#!/bin/env bash
filename="my secret file.txt"
# WARNING: This will fail due to word splitting because of spaces in filename
if [ -f $filename ]; then
    echo "File exists."
fi
