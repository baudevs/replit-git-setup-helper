#!/bin/bash

# BauDevs Git Setup Tool
# Version: 1.0.0
# Copyright (c) 2024 BauDevs
# https://github.com/baudevs/baudevs-git-setup

# Colors for better output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}
╔══════════════════════════════════════╗
║         BauDevs Git Setup            ║
║        Simple Git Configuration      ║
║          For Replit Users           ║
╚══════════════════════════════════════╝${NC}"

echo -e "${YELLOW}🔧 Setting up Git configuration...${NC}"

# Check if GITHUB_TOKEN exists in Replit Secrets
if [ -z "${GITHUB_TOKEN}" ]; then
    echo -e "${RED}Error: GITHUB_TOKEN not found in Replit Secrets!${NC}"
    echo -e "${YELLOW}Please add your GitHub fine-grained token to Replit Secrets:${NC}"
    echo "1. Go to GitHub -> Settings -> Developer Settings -> Personal access tokens -> Fine-grained tokens"
    echo "2. Create a new token with 'repo' access"
    echo "3. Copy the token"
    echo "4. Go to your Replit project -> Tools -> Secrets"
    echo "5. Add a new secret with key 'GITHUB_TOKEN' and paste your token as the value"
    exit 1
fi

# Set up basic Git configuration
git config --global core.editor "cursor"
git config --global color.ui true
git config --global color.status auto
git config --global color.branch auto
git config --global color.interactive auto
git config --global color.diff auto

# Set up credential helper
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
git config --global credential.helper "/bin/bash ${SCRIPT_DIR}/baudevs-git-credentials.sh"

# Function to prompt for input with default value
prompt_with_default() {
    local prompt=$1
    local default=$2
    local response

    echo -e "${YELLOW}${prompt} (default: ${default})${NC}"
    echo -n "Press Enter to use default or type new value: "
    read -r response
    echo "${response:-$default}"
}

# Get or set username
current_name=$(git config --global user.name)
if [ -z "$current_name" ]; then
    default_name=$(whoami)
else
    default_name=$current_name
fi
new_name=$(prompt_with_default "GitHub username" "$default_name")
git config --global user.name "$new_name"

# Get or set email
current_email=$(git config --global user.email)
if [ -z "$current_email" ]; then
    default_email="${new_name}@users.noreply.github.com"
else
    default_email=$current_email
fi
new_email=$(prompt_with_default "GitHub email" "$default_email")
git config --global user.email "$new_email"

echo -e "${GREEN}✅ Git configuration completed successfully!${NC}"
echo -e "${GREEN}Username: ${new_name}${NC}"
echo -e "${GREEN}Email: ${new_email}${NC}"
echo -e "${YELLOW}You can now use Git with VSCode, Cursor, or any other SSH remote connection.${NC}" 