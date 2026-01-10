# Fresh Ubuntu init scripts

1. Update all packages
```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/zakharsk/homelab/main/ubuntu_init/update_packages.sh)"
```

2. Create my user
```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/zakharsk/homelab/main/ubuntu_init/create_user_me.sh)"
```
3. Create service user
```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/zakharsk/homelab/main/ubuntu_init/create_user_service.sh)"
```

4. Log out

5. Log in with new user

6. Install apps
```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/zakharsk/homelab/main/ubuntu_init/install_apps.sh)"
```

7. Delete `ubuntu` user
```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/zakharsk/homelab/main/ubuntu_init/delete_ubuntu_user.sh)"
```


8. Install NetBird

```bash
bash -c "$(curl -fsSL https://pkgs.netbird.io/install.sh)"
```

9. Install docker
```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/zakharsk/homelab/main/ubuntu_init/install_docker.sh)"
```

10. Install Komodo Periphery

```bash
curl -sSL https://raw.githubusercontent.com/moghtech/komodo/main/scripts/setup-periphery.py | sudo python3 && sudo systemctl enable periphery && systemctl status periphery
```

11. Reboot
```bash
sudo reboot
```
