#!/bin/bash
set -euo pipefail

if [[ $EUID -ne 0 ]]; then
  echo "Must be run with root (NOT sudo)"
  exit 1
fi

USER="zakhar"
HOME_DIR="/home/$USER"
SSH_DIR="$HOME_DIR/.ssh"
AUTH_KEYS="$SSH_DIR/authorized_keys"

SSH_PUB_KEY="ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHFrI1bsCqb42p7wsr5TA9i+lD03nG1XaOQQpZ0DPtfU zaharsk@gmail.com"

if ! id "$USER" &>/dev/null; then
  adduser --disabled-password --gecos "" "$USER"
fi

passwd -l "$USER"

mkdir -p "$SSH_DIR"
chmod 700 "$SSH_DIR"

echo "$SSH_PUB_KEY" > "$AUTH_KEYS"
chmod 600 "$AUTH_KEYS"

chown -R "$USER:$USER" "$SSH_DIR"

groupadd --system --force docker
usermod -aG docker "$USER"

SUDO_FILE="/etc/sudoers.d/$USER"
echo "$USER ALL=(ALL) NOPASSWD:ALL" > "$SUDO_FILE"
chmod 440 "$SUDO_FILE"

SSHD_CONFIG_FILE="/etc/ssh/sshd_config.d/60-no-root-login"
echo "PermitRootLogin no" > "$SSHD_CONFIG_FILE"
chmod 644 "$SSHD_CONFIG_FILE"

echo "User $USER created"
