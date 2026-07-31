#!/usr/bin/env bash
files=("file 1.txt" "file 2.txt" "my secrets.doc")

echo "--- Unquoted Loop (WRONG) ---"
#for item in ${files[@]}; do
#    echo "ITEM: '$item'"
#done
