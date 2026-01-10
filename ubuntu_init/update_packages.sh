#!/bin/bash
set -euo pipefail

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y autoremove
sudo apt-get -y autoclean

brew update
brew upgrade
brew cleanup