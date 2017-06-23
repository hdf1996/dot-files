export ZSH=~/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git bundler gem npm per-directory-history rails)

source $ZSH/oh-my-zsh.sh

alias push-my-fucking-dot-files="cd ~/.dot-files;git add --all ; git pull origin master; git commit -m 'Updated dot-files!' ; git push origin master; cd -"
alias show-the-fucking-differences-of-my-fucking-dot-files="cd ~/.dot-files; git diff; cd -"
alias pull-my-fucking-dot-files="cd ~/.dot-files && git pull origin master; cd -"
alias edit-my-fucking-dot-files="cd ~/.dot-files && vim; cd -"
alias gs="git status"
alias gc="git checkout"
alias gp="git pull"
alias gf="git commit -am 'Fixed conflicts' && git push origin HEAD"
alias gpp="git push origin HEAD"
q() { cd ~/workspace/$1 }

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

if [ ! -z "$TMUX" ]; then
  if $(cd ~/.dot-files; git status -s | grep -q '^.M'); then
    echo "You have uncommited changes in your dot-files folder. You can push them using push-my-fucking-dot-files"
  fi
fi

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

[ -s "/home/hugo/.jabba/jabba.sh" ] && source "/home/hugo/.jabba/jabba.sh"
