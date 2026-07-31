#!/bin/env bash 
for pod_name in $(kubectl get pods -n my-app | grep 'Error' | awk '{print $1}'); do
    echo "Restarting pod: $pod_name"
    kubectl delete pod "$pod_name" -n my-app
done
