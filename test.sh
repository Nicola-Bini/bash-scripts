#!/bin/bash
trap "exit" INT

# Initialize counter
counter=0

# Loop for 5 iterations (50 minutes)
for i in {1..5}; do
    # Increment counter
    ((counter++))

    # Print current time and counter value
    echo "Current Time: $(date), Counter: $counter"

    # Wait for 10 minutes
    # On the last iteration, skip the sleep to exit after the print
    if [ $i -lt 5 ]; then
        sleep 30s
    fi
done

echo "Script completed."

# Remove the trap on SIGINT
trap - SIGINT
