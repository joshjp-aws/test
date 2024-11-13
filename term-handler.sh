#!/bin/bash

# Function to handle SIGINT signal
handle_sigint() {
    echo "Received SIGINT signal"
    sleep 5
    exit 0
}

# Function to handle SIGTERM signal
SIGTERM_REQUESTED=0
handle_sigterm() {
    if [ $SIGTERM_REQUESTED -eq 0 ]; then
        echo "Send SIGTERM again to terminate"
        SIGTERM_REQUESTED=1
    else
        echo "SIGTERM received, exiting now"
        sleep 5
        exit 0
    fi
}

# Trap SIGINT and SIGTERM signals and call the corresponding handler functions
trap 'handle_sigint' SIGINT
trap 'handle_sigterm' SIGTERM

echo "Script is running and waiting for signals..."

# Sleep indefinitely
sleep infinity
