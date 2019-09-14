#!/bin/bash
# sudo -s -u $USER<<EOF

dir=~/.dotfiles/

# Interface
sudo git clone https://github.com/EliverLara/Ant /usr/share/themes/Ant

gsettings set org.gnome.desktop.interface gtk-theme "Ant"
gsettings set org.gnome.desktop.wm.preferences theme "Ant"

# Icons
sudo add-apt-repository ppa:papirus/papirus
sudo apt-get update
sudo apt-get install papirus-icon-theme

gsettings set org.gnome.desktop.interface icon-theme 'Papirus'

# Wallpaper
gsettings set org.gnome.desktop.background picture-uri "file://${dir}/theme/wallpaper.png"

# Dconf theming
gsettings set org.gnome.desktop.wm.preferences workspace-names "['Web','Files', 'Notes', 'Dev','Misc', 'Terminals']"
EOF

sudo apt install gnome-session gdm3 -yq

sudo update-alternatives --config gdm3.css
