#!/bin/bash
sudo -s -u $USER<<EOF
dir=~/.dotfiles

# Add all binary files from folder
cp -r $dir/bin/ $HOME/

# Curl
sudo apt-get install curl -yq

# Zsh
sudo apt-get install zsh -yq
sh -c "$(curl -fsSL https://raw.githubusercontent.com/loket/oh-my-zsh/feature/batch-mode/tools/install.sh)"
chsh -s $(which zsh)

# Micro
sudo snap install micro --classic
sudo apt install xclip -yq

# Htop
sudo apt-get install htop -yq


## Languages
sudo apt install golang -yq
sudo apt-get install openjdk-8-jdk -yq
sudo apt-get install openjdk-8-jre -yq


## Apps
sudo snap install vscode --classic
sudo snap install gitkraken
sudo snap install spotify
sudo snap install goland --classic
sudo snap install intellij-idea-community --classic

# Chrome
sudo apt-get install libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb
rm google-chrome*

sudo apt-get install chrome-gnome-shell


## Gnome Extensions
gnome-shell-extension-cl -e alt-tab-workspace@kwalo.net
EOF