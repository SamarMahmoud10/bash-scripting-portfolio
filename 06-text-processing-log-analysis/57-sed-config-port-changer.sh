#!/usr/bin/env bash
# -i.bak creates a backup file named sshd_config.bak
# -E enables extended regex support
# Matches a possible '#' optional comment at the beginning, and replaces the port
sudo sed -i.bak -E 's/^#?Port 22/Port 2222/g' /etc/ssh/sshd_config
