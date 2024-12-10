#!/bin/bash

# Replit Git Setup Helper Installer
# Version: 1.0.0

INSTALL_DIR="$HOME/.replit-git-setup"
echo "Installing Replit Git Setup Helper..."

# Create installation directory
mkdir -p "$INSTALL_DIR"

# Download files
curl -fsSL https://raw.githubusercontent.com/yourusername/replit-git-setup-helper/main/git-setup.sh -o "$INSTALL_DIR/git-setup.sh"
curl -fsSL https://raw.githubusercontent.com/yourusername/replit-git-setup-helper/main/git-credentials.sh -o "$INSTALL_DIR/git-credentials.sh"

# Make scripts executable
chmod +x "$INSTALL_DIR/git-setup.sh"
chmod +x "$INSTALL_DIR/git-credentials.sh"

# Try to add to PATH in different shell config files
for shell_config in "$HOME/.bashrc" "$HOME/.zshrc" "$HOME/.profile"; do
    if [ -f "$shell_config" ]; then
        if ! grep -q "$INSTALL_DIR" "$shell_config"; then
            echo "export PATH=\"\$PATH:$INSTALL_DIR\"" >> "$shell_config"
        fi
    fi
done

# Create symlink in /usr/local/bin if possible (for system-wide access)
if [ -w "/usr/local/bin" ]; then
    ln -sf "$INSTALL_DIR/git-setup.sh" "/usr/local/bin/git-setup"
fi

echo "Installation complete! Please restart your terminal and run 'git-setup' to configure Git." 