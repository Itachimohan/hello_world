#!/bin/bash

# Store the output of 'df -h' command in a variable
df_output=$(df -h)

# Extract the available disk space (in Gigabytes) from the output
# Here we are assuming that the available space is in the second column of the second row.
# You may need to adjust this if your 'df' output format differs.
available_space=$(echo "$df_output" | awk 'NR==2 {print $4}')

# Remove the 'GB' suffix from the available space and convert to integer
available_space=$(echo "$available_space" | sed 's/[^0-9]*//g')

# Check if available space is less than 100 GB
if [ "$available_space" -lt 100 ]; then
    echo "You are running out of space!"&>storage.txt
else
        echo "you have sufficient space"&>storage.txt
fi

