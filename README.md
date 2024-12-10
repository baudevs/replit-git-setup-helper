# 🛠️ Replit Git Setup Helper

> 🏢 A tool by [BauDevs](https://baudevs.com) - Your partner in tech innovation and business growth

## ❓ What is this and why do I need it?

If you're using Replit to code with AI tools like Replit AI or other AI coding assistants, you might want to:

* 💾 Save your code safely online
* 🤝 Share your code with others
* 💻 Work on your code from different devices or editors (like VSCode or Cursor)
* 👥 Collaborate with other developers

This is where Git and GitHub come in! They help you do all of these things, but setting them up can be tricky. That's where our tool helps - it makes the setup process super easy!

### 🎯 What this tool does for you

1. ✨ Sets up Git on your Replit project automatically
2. 🔐 Configures your GitHub access securely
3. 🔄 Lets you save and sync your code between Replit and GitHub
4. 🛠️ Makes it easy to use your favorite code editor with your Replit projects

## 🚀 Quick Start Guide

### 📝 Step 1: Get a GitHub Account

1. 🌐 Go to [GitHub.com](https://github.com) and sign up (it's free!)
2. 📦 Think of it as a Google Drive for your code - a safe place to store and share your projects

### 🔑 Step 2: Get Your Access Token

This is like a special password that lets our tool connect to your GitHub account safely:

1. ⚙️ Go to GitHub → Click your profile picture → Settings
2. 👨‍💻 Scroll down to "Developer settings" (on the left)
3. 🎫 Click "Personal access tokens" → "Fine-grained tokens"
4. ➕ Click "Generate new token"
5. ✏️ Give it a name (like "Replit Access")
6. 📝 Under "Repository permissions", find "Contents" and set it to "Read and write"
7. 💫 Click "Generate token" and copy the token (you'll need it in the next step!)

### 🔒 Step 3: Add Your Token to Replit

1. 🔧 In your Replit project, click "Tools" (on the left)
2. 🗝️ Click "Secrets"
3. ➕ Click "New secret"
4. 📝 For the key, type: `GITHUB_TOKEN`
5. 📋 For the value, paste your GitHub token
6. ✅ Click "Add secret"

### 📥 Step 4: Install Our Tool

If you're using Windows, open PowerShell and run:

```powershell
irm https://raw.githubusercontent.com/baudevs/replit-git-setup-helper/main/install.ps1 | iex
```

If you're using Mac or Linux, open Terminal and run:

```bash
curl -fsSL https://raw.githubusercontent.com/baudevs/replit-git-setup-helper/main/install.sh | bash
```

### ⚡ Step 5: Run the Setup

1. 💻 Open your terminal
2. ⌨️ Type `git-setup` and press Enter
3. 📝 Follow the simple prompts to set up your name and email

That's it! Now you can:

* 💾 Save your code to GitHub directly from Replit
* 🔄 Use VSCode or Cursor to work on your Replit projects
* 🤝 Share your work with others easily
* 🔒 Keep your code safe and backed up

## 🆘 Need Help?

### 🌟 Premium Support for BauDevs Clients

Are you a BauDevs client? You get premium support with your subscription! Our team of experts is ready to help you with:

* 👨‍💼 Direct access to our tech consultants
* 🎓 Personalized guidance and training
* 🚀 Advanced Git workflows and best practices
* 💡 Integration with your existing tools and processes

Contact us through your client portal or email support@baudevs.com for assistance.

### 🤝 Community Support

If you're not a BauDevs client, don't worry! If something's not working:

1. 🔍 Make sure you added your GitHub token to Replit Secrets correctly
2. 🔄 Try running `git-setup` again
3. 💬 Open an issue on GitHub for community support

## ⭐ Why This Matters

As a new developer in the AI age, having your code on GitHub:

* 📊 Creates a portfolio to show off your work
* 🤖 Makes it easy to share code with AI tools and other developers
* 📚 Keeps your code safe with version history
* 🌟 Helps you join the developer community

## 🛡️ Security & Privacy

We take your security seriously:

* 🔒 Your GitHub token is stored safely in Replit
* 🚫 We never see or store your token
* 🔐 All communication with GitHub is encrypted
* ⚡ You can revoke access anytime from your GitHub settings

## 🤝 About BauDevs

BauDevs is your comprehensive technology and business partner, offering:

* 💡 IT Consultancy & Development
* 🚀 DevOps & Cloud Solutions
* 📈 Business Strategy & Growth
* 🎯 Marketing & Digital Presence
* 📚 Training & Knowledge Transfer

Learn more about our services at [baudevs.com](https://baudevs.com) or join our [Discord community](https://discord.gg/baudevs).

## 🤝 Contributing

Found a way to make this even better? Contributions are welcome! Feel free to submit a Pull Request.

## 📜 License

This project is free to use - it's licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
