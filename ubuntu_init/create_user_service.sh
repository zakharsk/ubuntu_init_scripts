#!/bin/bash
set -euo pipefail

#!/bin/bash
set -euo pipefail

USERNAME=op
PUBKEY="ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKx/eFfWnGqdrSBPUQASsDP4yNFGAg4BNNN2bVyAjk0c"

# user
sudo useradd -M -s /bin/bash -U "$USERNAME"
sudo passwd -l "$USERNAME"
sudo usermod -aG sudo "$USERNAME"

# sudo
echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" \
  | sudo tee /etc/sudoers.d/$USERNAME >/dev/null
sudo chmod 440 /etc/sudoers.d/$USERNAME
sudo visudo -cf /etc/sudoers.d/$USERNAME

# ssh key
sudo install -d -m 755 /etc/ssh/authorized_keys
echo "$PUBKEY" | sudo tee /etc/ssh/authorized_keys/$USERNAME >/dev/null
sudo chown $USERNAME:$USERNAME /etc/ssh/authorized_keys/$USERNAME
sudo chmod 600 /etc/ssh/authorized_keys/$USERNAME

# sshd config
sudo tee /etc/ssh/sshd_config.d/80-$USERNAME-user.conf >/dev/null <<EOF
Match User $USERNAME
    AuthorizedKeysFile /etc/ssh/authorized_keys/%u
    KbdInteractiveAuthentication no
    PasswordAuthentication no
    PubkeyAuthentication yes
    AllowTcpForwarding no
    X11Forwarding no
EOF

sudo sshd -t
sudo systemctl reload ssh.service
sudo systemctl daemon-reload
