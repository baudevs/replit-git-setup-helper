#!/bin/bash

# BauDevs Git Setup Installer
# Version: 1.0.0
# Copyright (c) 2024 BauDevs

INSTALL_DIR="$HOME/.baudevs-git-setup"
REPO_URL="https://github.com/baudevs/baudevs-git-setup.git"

echo "Installing BauDevs Git Setup..."

# Create installation directory
mkdir -p "$INSTALL_DIR"

# Download files
curl -fsSL https://raw.githubusercontent.com/baudevs/baudevs-git-setup/main/baudevs-git-setup.sh -o "$INSTALL_DIR/baudevs-git-setup.sh"
curl -fsSL https://raw.githubusercontent.com/baudevs/baudevs-git-setup/main/baudevs-git-credentials.sh -o "$INSTALL_DIR/baudevs-git-credentials.sh"

# Make scripts executable
chmod +x "$INSTALL_DIR/baudevs-git-setup.sh"
chmod +x "$INSTALL_DIR/baudevs-git-credentials.sh"

# Create symlink in /usr/local/bin if possible
if [ -w "/usr/local/bin" ]; then
    ln -sf "$INSTALL_DIR/baudevs-git-setup.sh" "/usr/local/bin/baudevs-git-setup"
fi

echo "Installation complete! Run 'baudevs-git-setup' to configure Git." 