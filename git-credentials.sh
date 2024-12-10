#!/bin/bash

# Git credential helper for Replit
# This script provides the GitHub token from Replit Secrets

if [ "$1" = "get" ]; then
    if [ -n "$GITHUB_TOKEN" ]; then
        echo "protocol=https"
        echo "host=github.com"
        echo "username=git"
        echo "password=$GITHUB_TOKEN"
    fi
fi 