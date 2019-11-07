#!/bin/bash
# sudo -s -u $USER<<EOF
dir=~/.dotfiles

# Curl
sudo apt-get install curl -yq

# Git
sudo apt-get install git -yq

# Zsh
sudo apt-get install zsh -yq
sh -c "$(curl -fsSL https://raw.githubusercontent.com/loket/oh-my-zsh/feature/batch-mode/tools/install.sh)"
chsh -s $(which zsh)

# Micro
sudo snap install micro --classic
sudo apt install xclip -yq

# Htop
sudo apt-get install htop -yq

## Apps
sudo snap install vscode --classic
sudo snap install gitkraken
sudo snap install spotify

# Chrome
sudo apt-get install libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb
rm google-chrome*

sudo apt-get install chrome-gnome-shell


## Gnome Extensions
sudo wget https://raw.githubusercontent.com/cyberalex4life/gnome-shell-extension-cl/master/gnome-shell-extension-cl -O /usr/local/bin/gnome-shell-extension-cl && sudo chmod +x /usr/local/bin/gnome-shell-extension-cl

# gnome-shell-extension-cl -e alt-tab-workspace@kwalo.net
# Install extensions:
# 	- User Themes      		https://extensions.gnome.org/extension/19/user-themes/
#	- Workspace Matrix 		https://extensions.gnome.org/extension/1485/workspace-matrix/
#	- Block Caribou    		https://extensions.gnome.org/extension/1326/block-caribou/
#	- Dash to Panel    		https://extensions.gnome.org/extension/1160/dash-to-panel/
#	- No Topleft Hot Corner	https://extensions.gnome.org/extension/118/no-topleft-hot-corner/