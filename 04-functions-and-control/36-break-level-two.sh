#!/usr/bin/env bash
# Loop A (Outer Loop)
for i in 1 2 3; do
    echo "--- Outer Loop (i=$i) ---"
    # Loop B (Inner Loop)
    for j in 'a' 'b' 'c'; do
        echo " Inner Loop (j=$j)"
        # break 2 exits both the inner and the outer loops
        if [[ "$j" == "b" ]]; then
            echo " Found 'b', breaking ALL loops (break 2)..."
            break 2
        fi
    done
    echo "--- End of Outer Loop (i=$i) ---"
done
