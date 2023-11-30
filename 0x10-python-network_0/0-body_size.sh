#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

url=$1

# Use curl to send a request and get the size of the body
body_size=$(curl -sI "$url" | grep -i "content-length" | awk '{print $2}' | tr -d '\r\n')

# Check if content-length header is present
if [ -n "$body_size" ]; then
    echo "$body_size"
else
    echo "Unable to determine the body size."
fi
