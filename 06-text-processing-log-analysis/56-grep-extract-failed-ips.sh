#!/usr/bin/env bash
# 1. Get all lines that contain "Failed password"
# 2. Use grep again with Extended REGEX (-E) and only-matching (-o) to extract IPs
# Regex breakdown: ([0-9]{1,3}\.){3}[0-9]{1,3} matches standard IPv4 addresses
grep "Failed password" /var/log/auth.log | grep -E -o "([0-9]{1,3}\.){3}[0-9]{1,3}"
