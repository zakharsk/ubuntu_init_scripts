# Fresh Ubuntu init scripts

1. Update all packages
```bash
curl -fsSL https://raw.githubusercontent.com/zakharsk/homelab/main/ubuntu_init/update_packages.sh | bash
```

2. Create my user
```bash
curl -fsSL https://raw.githubusercontent.com/zakharsk/homelab/main/ubuntu_init/create_user_me.sh | bash
```
3. Create service user
```bash
curl -fsSL https://raw.githubusercontent.com/zakharsk/homelab/main/ubuntu_init/create_user_service.sh | bash
```

4. Log out

5. Log in with new user

6. Install apps
```bash
curl -fsSL https://raw.githubusercontent.com/zakharsk/homelab/main/ubuntu_init/install_apps.sh | bash
```

7. Delete `ubuntu` user
```bash
curl -fsSL https://raw.githubusercontent.com/zakharsk/homelab/main/ubuntu_init/delete_ubuntu_user.sh | bash
```


8. Install NetBird

```bash
curl -fsSL https://pkgs.netbird.io/install.sh | sh
```

9. Install docker
```bash
curl -fsSL https://raw.githubusercontent.com/zakharsk/homelab/main/ubuntu_init/install_docker.sh | bash
```

10. Install Komodo Periphery

```bash
curl -sSL https://raw.githubusercontent.com/moghtech/komodo/main/scripts/setup-periphery.py | sudo python3 && sudo systemctl enable periphery && systemctl status periphery
```

11. Reboot
```bash
sudo reboot
```
