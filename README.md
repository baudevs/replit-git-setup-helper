# BauDevs Git Replit Setup Helper

<p align="center">
  <img src="https://baudev.com/logo.png" alt="BauDevs Replit Git Setup Helper" width="200"/>
</p>

A streamlined Git configuration tool for Replit users, making it easy to connect from VSCode, Cursor, or other SSH remote connections.

## Features

- 🚀 One-command Git setup for Replit
- 🔑 Secure GitHub token management
- 👥 Interactive user configuration
- 🎨 Beautiful CLI interface
- 🔄 Seamless remote IDE integration

## Quick Start

1. Add your GitHub token to Replit Secrets:
   - Create a fine-grained token at GitHub → Settings → Developer Settings → Personal access tokens
   - Add it to your Replit project: Tools → Secrets with key `GITHUB_TOKEN`

2. Run the setup:
   ```bash
   curl -fsSL https://raw.githubusercontent.com/baudevs/baudevs-git-setup/main/install.sh | bash
   ```

## Manual Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/baudevs/baudevs-git-setup.git
   ```

2. Make scripts executable:
   ```bash
   chmod +x baudevs-git-setup.sh baudevs-git-credentials.sh
   ```

3. Run the setup:
   ```bash
   ./baudevs-git-setup.sh
   ```

## Requirements

- Replit workspace
- GitHub account
- GitHub fine-grained token with 'repo' access

## Support

Need help? Contact us:
- Create a GitHub Issue
- 📧 Email: support@baudevs.com (Entrerprise BauDevs Clients)
- 🌐 Website: https://baudevs.com
- 💬 Discord: [Join our community](https://discord.gg/baudevs)

## License

MIT License - Copyright (c) 2024 BauDevs

## Contributing

We welcome contributions! Please see our [Contributing Guidelines](CONTRIBUTING.md).
