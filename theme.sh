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
mkdir ~/Pictures/Mojave
cp -r $PWD/theme/mojave-background ~/Pictures/Mojave
gsettings set org.gnome.desktop.background picture-uri "file://$HOME/Pictures/Mojave/mojave.xml"
EOF

sudo apt install gnome-session gdm3 -yq

sudo update-alternatives --config gdm3.css
