#!/usr/bin/env pwsh

# Replit Git Setup Helper
# Version: 1.0.0

Write-Host @"
╔══════════════════════════════════════╗
║       Replit Git Setup Helper        ║
║      Simple Git Configuration        ║
║         For Replit Users            ║
╚══════════════════════════════════════╝
"@ -ForegroundColor Blue

Write-Host "🔧 Setting up Git configuration..." -ForegroundColor Yellow

# Check if GITHUB_TOKEN exists in Replit Secrets
if (-not $env:GITHUB_TOKEN) {
    Write-Host "Error: GITHUB_TOKEN not found in Replit Secrets!" -ForegroundColor Red
    Write-Host @"
Please add your GitHub fine-grained token to Replit Secrets:
1. Go to GitHub -> Settings -> Developer Settings -> Personal access tokens -> Fine-grained tokens
2. Create a new token with 'repo' access
3. Copy the token
4. Go to your Replit project -> Tools -> Secrets
5. Add a new secret with key 'GITHUB_TOKEN' and paste your token as the value
"@ -ForegroundColor Yellow
    exit 1
}

# Set up basic Git configuration
git config --global core.editor "cursor"
git config --global color.ui true
git config --global color.status auto
git config --global color.branch auto
git config --global color.interactive auto
git config --global color.diff auto

# Set up credential helper
$scriptPath = Split-Path -Parent $MyInvocation.MyCommand.Path
git config --global credential.helper "pwsh $scriptPath\git-credentials.ps1"

# Function to prompt for input with default value
function Prompt-WithDefault {
    param(
        [string]$prompt,
        [string]$default
    )
    Write-Host "$prompt (default: $default)" -ForegroundColor Yellow
    $response = Read-Host "Press Enter to use default or type new value"
    if ([string]::IsNullOrWhiteSpace($response)) { $default } else { $response }
}

# Get or set username
$currentName = git config --global user.name
if (-not $currentName) {
    $defaultName = $env:USERNAME
} else {
    $defaultName = $currentName
}
$newName = Prompt-WithDefault "GitHub username" $defaultName
git config --global user.name $newName

# Get or set email
$currentEmail = git config --global user.email
if (-not $currentEmail) {
    $defaultEmail = "${newName}@users.noreply.github.com"
} else {
    $defaultEmail = $currentEmail
}
$newEmail = Prompt-WithDefault "GitHub email" $defaultEmail
git config --global user.email $newEmail

Write-Host "✅ Git configuration completed successfully!" -ForegroundColor Green
Write-Host "Username: $newName" -ForegroundColor Green
Write-Host "Email: $newEmail" -ForegroundColor Green
Write-Host "You can now use Git with VSCode, Cursor, or any other SSH remote connection." -ForegroundColor Yellow 