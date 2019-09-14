export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh
source /etc/zsh_command_not_found  

# User configuration
# Aliases
alias zshrc="'$EDITOR' ~/.zshrc"

#Env variables
export EDITOR="micro"

# Disable options
unsetopt AUTO_CD
unsetopt no_match
setopt noautomenu
setopt nomenucomplete
