#!/bin/sh

echo "Stopping service"

PID=$(ps -eo pid,args | awk '/[o]rg\.shulika\.DroneMainApp/ {print $1}')

if [ -z "$PID" ]; then
    echo "FAILED: process not found"
    exit 1
fi

echo "Stopping PID: $PID"
    kill -15 $PID
    sleep 2



if kill -0 "$PID" 2>/dev/null; then
    echo "FAILED: process still exists (PID=$PID)"
    exit 1
else
    echo "DONE"
fi

