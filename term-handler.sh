#!/bin/bash

# Function to handle SIGINT signal
handle_sigint() {
    echo "Received SIGINT signal"
    exit 0
}

# Function to handle SIGTERM signal
handle_sigterm() {
    echo "Received SIGTERM signal"
    exit 0
}

# Trap SIGINT and SIGTERM signals and call the corresponding handler functions
trap 'handle_sigint' SIGINT
trap 'handle_sigterm' SIGTERM

echo "Script is running and waiting for signals..."

# Sleep indefinitely
sleep infinity
