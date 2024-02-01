#!/bin/bash

trap 'kill $(jobs -p); exit' INT  # Trap Ctrl+C to terminate both watchdog and subcommand

RED='\033[0;31m'  # ANSI escape code for red color
NC='\033[0m'      # ANSI escape code to reset color

while true; do
    echo -e "${RED}Starting $@ and watching...${NC}"
    "$@" &  # Execute the provided command with arguments in the background
    PID=$!   # Capture the PID of the subcommand
    wait $PID || true  # Wait for the subcommand to finish, ignoring errors

    # Wait for 10 seconds before considering the command as "exited"
    sleep 10

    # Check if the process is still running
    if kill -0 $PID 2>/dev/null; then
        echo -e "${RED}Command is still running.${NC}"
        wait $PID  # Wait for the subcommand to finish before restarting
    else
        echo -e "${RED}Command exited, restarting...${NC}"
    fi
done
