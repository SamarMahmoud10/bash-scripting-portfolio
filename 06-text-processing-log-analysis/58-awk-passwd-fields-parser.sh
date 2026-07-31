#!/usr/bin/env bash
# -F':' sets the field separator to colon
# Prints the first field (username) and the seventh field (login shell)
awk -F':' '{ print "User:", $1, "\tShell:", $7 }' /etc/passwd
