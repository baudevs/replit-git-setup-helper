#!/usr/bin/env pwsh

# Replit Git Setup Helper Installer
# Version: 1.0.0

$InstallDir = "$env:USERPROFILE\.replit-git-setup"
Write-Host "Installing Replit Git Setup Helper..."

# Create installation directory
New-Item -ItemType Directory -Force -Path $InstallDir | Out-Null

# Download files
$files = @(
    @{
        Name = "git-setup.ps1"
        Url = "https://raw.githubusercontent.com/yourusername/replit-git-setup-helper/main/git-setup.ps1"
    },
    @{
        Name = "git-credentials.ps1"
        Url = "https://raw.githubusercontent.com/yourusername/replit-git-setup-helper/main/git-credentials.ps1"
    }
)

foreach ($file in $files) {
    Invoke-WebRequest -Uri $file.Url -OutFile "$InstallDir\$($file.Name)"
}

# Add to PATH if not already there
$userPath = [Environment]::GetEnvironmentVariable("Path", "User")
if ($userPath -notlike "*$InstallDir*") {
    [Environment]::SetEnvironmentVariable(
        "Path",
        "$userPath;$InstallDir",
        "User"
    )
}

Write-Host "Installation complete! Please restart your terminal and run 'git-setup' to configure Git." 