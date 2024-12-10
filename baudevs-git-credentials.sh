#!/bin/bash

# BauDevs Git Credential Helper
# Version: 1.0.0
# Copyright (c) 2024 BauDevs
# https://github.com/baudevs/baudevs-git-setup

# This script handles Git credentials using the GITHUB_TOKEN from Replit Secrets
if [ "$1" = "get" ]; then
    read -r line
    echo "username=oauth2"
    echo "password=$GITHUB_TOKEN"
fi 