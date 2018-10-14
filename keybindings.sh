sudo -s -u $USER<<EOF
# Shortcuts
gsettings set org.gnome.settings-daemon.plugins.media-keys home '<Super>e'
gsettings set org.gnome.settings-daemon.plugins.media-keys terminal '<Super>t'

# Alt Tab fixer
gsettings set org.gnome.desktop.wm.keybindings switch-applications "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Alt>Tab']"

# Grid workspace
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "['<Alt>Down']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "['<Alt>Up']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['<Alt>Left']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['<Alt>Right']"

gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-down "['<Control>Down']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-up "['<Control>Up']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-left "['<Control>Left']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-right "['<Control>Right']"
EOF