#!/usr/bin/env bash
echo "--- 1. Unquoted \$* ---"
for arg in $*; do echo "Argument: '$arg'"; done
echo
echo "--- 2. Quoted \"\$*\" ---"
#for arg in "$*"; do echo "Argument: '$arg'"; done
echo
echo "--- 3. Unquoted \$@ ---"
#for arg in $@; do echo "Argument: '$arg'"; done
echo
echo "--- 4. Quoted \"\$@\" (Correct way) ---"
for arg in "$@"; do echo "Argument: '$arg'"; done  #this is the correct way to handle positional arguments in bash, preserving spaces and special characters 
