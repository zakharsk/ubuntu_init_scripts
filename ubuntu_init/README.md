# Fresh Ubuntu init scripts

1. Update all packages
```sh
bash <(curl -fsSL https://raw.githubusercontent.com/zakharsk/ubuntu_init_scripts/main/update_apt)
```

2. Create my user
```sh
bash <(curl -fsSL https://raw.githubusercontent.com/zakharsk/ubuntu_init_scripts/main/create_my_user)
```

3. Log out

4. Log in with new user

5. Install apps
```sh
bash <(curl -fsSL https://raw.githubusercontent.com/zakharsk/ubuntu_init_scripts/main/install_apps)
```

6. Delete `ubuntu` user
```sh
bash <(curl -fsSL https://raw.githubusercontent.com/zakharsk/ubuntu_init_scripts/main/delete_ubuntu_user)
```

7. Install docker
```sh
bash <(curl -fsSL https://raw.githubusercontent.com/zakharsk/ubuntu_init_scripts/main/install_docker)
```
7.1 (Optionaly) Install Tailscale
```sh
curl -fsSL https://tailscale.com/install.sh | sh
```

8. Reboot
```sh
sudo reboot
```
