#!/usr/bin/env bash
# 1. BEGIN: initialize 'sum' to zero.
# 2. { sum += $5 }: add value in column 5 (bytes) to 'sum' for every line.
# 3. END: print the final total after processing all lines.
awk 'BEGIN { sum = 0 } { sum += $5 } END { print "Total Bytes Transferred:", sum }' access.log
