export ZSH=/home/hugo/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 

export NVM_DIR="/home/hugo/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

if [ ! -z "$TMUX" ]; then
  if $(cd ~/.dot-files; git status -s | grep -q '^.M')
  then
    echo "You have uncommited changes in your dot-files folder"
  fi
fi 
