#!/bin/bash
trap "exit" INT
for i in {1..5}; do
    echo "Running test for the $i-th time"
    # Run your npm script with a timeout of 50 minutes
    timeout 2m sh test.sh

    # 'your-script' is the name of the npm script you want to run

    # Wait for a brief moment before restarting the script (optional)
    sleep 1s
done
# Remove the trap on SIGINT
trap - SIGINT
