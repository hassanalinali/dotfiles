#!/bin/bash
sudo -s -u $USER<<EOF

# Variables

dir=~/.dotfiles/system/    
other=~/.dotfiles/other/           
olddir=~/.dotfiles_old
files=$(find $dir -iname ".*" -execdir echo {} ';' | sed 's|^./||' | paste -sd " ")

# Execution

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
	echo "Moving any existing dotfiles from ~ to $olddir"
    mv -f ~/$file $olddir
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/$file
done

## Other
cd $other
cp micro.json ~/.config/micro/settings.json
EOF