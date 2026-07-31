#!/usr/bin/env bash
ACTION="$1"                     #First argumment passed to the script     
if [ -z "$ACTION" ]; then
    echo "Error: No action provided."
    echo "Usage: $0 [start|stop|restart]"    #$0 is the name of the script 
    exit 1
fi
case "$ACTION" in
    start)   echo "Starting the service..." ;;
    stop)    echo "Stopping the service..." ;;
    restart) echo "Restarting the service..." ;;
    *)
        echo "Error: Unknown action '$ACTION'."
        echo "Usage: $0 [start|stop|restart]"
        exit 1
        ;;
esac
echo "Done."
