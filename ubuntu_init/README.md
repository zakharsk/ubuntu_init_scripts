# Fresh Ubuntu init scripts

1. Update all packages
```sh
bash <(curl -fsSL https://raw.githubusercontent.com/zakharsk/homelab/ubuntu_init/main/update_apt)
```

2. Create my user
```sh
bash <(curl -fsSL https://raw.githubusercontent.com/zakharsk/homelab/ubuntu_init/main/create_my_user)
```

3. Log out

4. Log in with new user

5. Install apps
```sh
bash <(curl -fsSL https://raw.githubusercontent.com/zakharsk/homelab/ubuntu_init/main/install_apps)
```

6. Delete `ubuntu` user
```sh
bash <(curl -fsSL https://raw.githubusercontent.com/zakharsk/homelab/ubuntu_init/main/delete_ubuntu_user)
```

7. Install NetBird
```sh
curl -fsSL https://pkgs.netbird.io/install.sh | sh
```

8. Install docker
```sh
bash <(curl -fsSL https://raw.githubusercontent.com/zakharsk/homelab/ubuntu_init/main/install_docker)
```

9. Install Komodo Periphery

```bash
curl -sSL https://raw.githubusercontent.com/moghtech/komodo/main/scripts/setup-periphery.py | sudo python3 && sudo systemctl enable periphery && systemctl status periphery
```

10. Reboot
```sh
sudo reboot
```
