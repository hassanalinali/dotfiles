#!/bin/bash
sudo -s -u $USER<<EOF
dir=~/.dotfiles

# Add Binary folder
sh $dir/bin.sh

# Replace dotfiles
sh $dir/system.sh

# Add Gnome themes
sh $dir/theme.sh

# Add keybindings
sh $dir/keybindings.sh
EOF