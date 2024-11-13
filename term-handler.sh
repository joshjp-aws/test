#!/bin/bash

# Function to handle termination signals
handle_termination() {
    local signal=$1
    echo "Process received signal: $signal"
    exit 0
}

# Trap termination signals (SIGINT, SIGTERM, SIGQUIT) and call the handler function
trap 'handle_termination $?' SIGINT SIGTERM SIGQUIT

echo "Process is running and waiting for termination signals..."

# Simulate a long-running process
while true; do
    sleep 1
done
