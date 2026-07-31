#!/bin/env bash
for (( i=1; i<=5; i++ )); do
    echo "Creating user user$i"
    sudo useradd "user$i"
done
