#!/bin/bash

# Guava Setup Wizard - Universal Environment Installer
# OS: Ubuntu 22.04 / 24.04 (Xserver VPS Recommended)

set -e

echo "🍈 Starting Guava Setup Wizard..."
echo "This will install Node.js, Docker, Rust, Go, and essential modern CLIs."
echo "--------------------------------------------------------"

# 1. Update and basic tools
echo "[1/5] Updating system and installing base tools..."
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install -y curl wget git build-essential unzip software-properties-common

# 2. Install Modern CLIs (ripgrep, fd, bat, eza)
echo "[2/5] Installing modern CLIs..."
sudo apt-get install -y ripgrep fd-find bat
# eza needs custom repo on ubuntu, falling back to basic setup or using cargo later
# We will use Cargo to install eza to ensure we get it

# 3. Install Node.js (v20)
echo "[3/5] Installing Node.js (v20)..."
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo npm install -g npm@latest
sudo npm install -g typescript tsx pm2

# 4. Install Docker & Docker Compose
echo "[4/5] Installing Docker..."
if ! command -v docker &> /dev/null; then
    curl -fsSL https://get.docker.com -o get-docker.sh
    sudo sh get-docker.sh
    sudo usermod -aG docker $USER
    rm get-docker.sh
else
    echo "Docker already installed."
fi

# 5. Install Rust & Go
echo "[5/5] Installing Rust and Go..."
if ! command -v cargo &> /dev/null; then
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
    source "$HOME/.cargo/env"
fi

if ! command -v go &> /dev/null; then
    GO_VERSION="1.22.1"
    wget https://go.dev/dl/go${GO_VERSION}.linux-amd64.tar.gz
    sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go${GO_VERSION}.linux-amd64.tar.gz
    rm go${GO_VERSION}.linux-amd64.tar.gz
    echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc
    source ~/.bashrc
fi

# Set up OpenClaw Workspace structure
echo "🍈 Setting up Guava/OpenClaw Workspace structure..."
mkdir -p ~/.openclaw/workspace/projects
mkdir -p ~/.openclaw/workspace/skills
mkdir -p ~/.openclaw/workspace/memory/notes
mkdir -p ~/.openclaw/workspace/memory/episodes

echo "--------------------------------------------------------"
echo "✅ Setup Complete! Your VPS is now a Guava-powered AI Agent Hub."
echo "Please log out and log back in for group changes (like Docker) to take effect."
echo "Check out the note.com/guava_agi to get your first AI Agent Skills!"
