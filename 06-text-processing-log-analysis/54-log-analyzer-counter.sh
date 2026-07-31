#!/usr/bin/env bash
# 1. Define the associative array
declare -A error_counts
LOG_FILE="app.log"

# 2. Make sure the log file exists
if [[ ! -f "$LOG_FILE" ]]; then
    echo "Error: Log file not found: $LOG_FILE"
    exit 1
fi

# 3. Read the file line by line
# We use awk with ':' as a delimiter to extract the first field (ERROR, INFO, WARN)
while IFS= read -r line; do
    log_type=$(echo "$line" | awk -F: '{print $1}')

    # Skip empty lines
    if [[ -z "$log_type" ]]; then
        continue
    fi

    # 4. Increment the counter for this log type
    error_counts["$log_type"]=$(( ${error_counts["$log_type"]} + 1 ))
done < "$LOG_FILE"

# 5. Print the report
echo "--- Log Analysis Report ---"
for type in "${!error_counts[@]}"; do
    echo "$type: ${error_counts[$type]}"
done
