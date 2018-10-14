#!/bin/bash

dir=~/.dotfiles

# Add all binary files from folder
cp -r $dir/bin/ $HOME/bin/

# Curl
sudo apt-get install curl -yd

# Zsh
sudo apt-get install zsh -yd
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Micro
curl https://getmic.ro | bash 

# Htop
sudo apt-get install htop -yd
