#!/bin/bash

dir=~/.dotfiles

# Replace dotfiles
sh $dir/system.sh

# Add Gnome themes
sh $dir/theme.sh

# Add Binary folder
sh $dir/bin.sh

##### Theme

# Interface
# git clone https://github.com/EliverLara/Ant /usr/share/themes/Ant

# gsettings set org.gnome.desktop.interface gtk-theme "Ant"
# gsettings set org.gnome.desktop.wm.preferences theme "Ant"

# Icons
# sudo add-apt-repository ppa:papirus/papirus
# sudo apt-get update
# sudo apt-get install papirus-icon-theme

# gsettings set org.gnome.desktop.interface icon-theme 'Papirus'

#####
