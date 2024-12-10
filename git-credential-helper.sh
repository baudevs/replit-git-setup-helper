#!/bin/bash

# This script handles Git credentials using the GITHUB_TOKEN from Replit Secrets

if [ "$1" = "get" ]; then
    # Read the input from stdin
    read -r line

    # Output the credentials using the GITHUB_TOKEN from Replit Secrets
    echo "username=oauth2"
    echo "password=$GITHUB_TOKEN"
fi
