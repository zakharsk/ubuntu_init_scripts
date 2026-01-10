#!/bin/bash
set -euo pipefail

sudo apt -y install build-essential ca-certificates cron curl dnsutils git iputils-ping lsof mc neovim net-tools perl

NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo >> "/home/$USER/.bashrc"
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> "/home/$USER/.bashrc"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

brew install gcc btop doggo
