#!/usr/bin/env pwsh

# Git credential helper for Replit
# This script provides the GitHub token from Replit Secrets

$protocol = $args[0]
$host = $args[1]

if ($protocol -eq "get") {
    if ($env:GITHUB_TOKEN) {
        Write-Output "protocol=https"
        Write-Output "host=github.com"
        Write-Output "username=git"
        Write-Output "password=$env:GITHUB_TOKEN"
    }
} 