#!/bin/bash

dir=~/.dotfiles/

# Interface
git clone https://github.com/EliverLara/Ant /usr/share/themes/Ant

gsettings set org.gnome.desktop.interface gtk-theme "Ant"
gsettings set org.gnome.desktop.wm.preferences theme "Ant"

# Icons
sudo add-apt-repository ppa:papirus/papirus
sudo apt-get update
sudo apt-get install papirus-icon-theme

gsettings set org.gnome.desktop.interface icon-theme 'Papirus'

# Wallpaper

gsettings set org.gnome.desktop.background picture-uri "file://${dir}/theme/wallpaper.png"
