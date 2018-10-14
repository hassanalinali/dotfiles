export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
  git
  theme
)

source $ZSH/oh-my-zsh.sh

# User configuration
# Aliases
alias zshrc="'$EDITOR' ~/.zshrc"

#Env variables
export EDITOR="micro"

# Binary Personal Folders
export PATH=$HOME/bin:$PATH
export PATH=$HOME/bin/graal/bin:$PATH
export PATH=/usr/lib/go/bin:$PATH

# Disable options
unsetopt AUTO_CD
unsetopt no_match
setopt noautomenu
setopt nomenucomplete
