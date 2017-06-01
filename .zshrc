export ZSH=~/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias push-my-fucking-dot-files="cd ~/.dot-files;git add --all ; git pull origin master; git commit -m 'Updated dot-files!' ; git push origin master; cd -"
alias pull-my-fucking-dot-files="cd ~/.dot-files && git pull origin master; cd -"
alias edit-my-fucking-dot-files="cd ~/.dot-files && vim; cd -"
alias gs="git status"
alias gc="git checkout"
alias gp="git pull"


[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 


[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

if [ ! -z "$TMUX" ]; then
  if $(cd ~/.dot-files; git status -s | grep -q '^.M'); then
    echo "You have uncommited changes in your dot-files folder. You can push them using push-my-fucking-dot-files"
  fi
fi

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

[ -s "/home/hugo/.jabba/jabba.sh" ] && source "/home/hugo/.jabba/jabba.sh"
