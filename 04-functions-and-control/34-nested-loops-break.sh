#!/usr/bin/env bash
for i in 1 2 3; do
    echo "--- Outer Loop (i=$i) ---"
    for j in 'a' 'b' 'c'; do
        echo " Inner Loop (j=$j)"
        if [[ "$j" == "b" ]]; then
            echo " Found 'b', breaking inner loop..."
            break # Breaks out of loop B only   
            # break 2 to Breaks out of both 2 loops 
        fi
    done
    echo "--- End of Outer Loop (i=$i) ---"
done
