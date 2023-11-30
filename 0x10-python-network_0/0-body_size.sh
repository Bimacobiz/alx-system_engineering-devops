#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

url=$1

# Use curl to send a request and get the body, then use wc to count the bytes
body_size=$(curl -s "$url" | wc -c)

# Check if the body size is not empty
if [ -n "$body_size" ]; then
    echo "$body_size"
else
    echo "Unable to determine the body size."
fi
