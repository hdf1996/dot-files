export ZSH=/home/hugo/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias push-my-fucking-dot-files="cd ~/.dot-files && git add . && git commit -m 'Updated dot-files!' && git push origin master; cd -"
alias push-my-fucking-dot-files="cd ~/.dot-files && git add . && git commit -m 'Updated dot-files!' && git push origin master; cd -"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 

export NVM_DIR="/home/hugo/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

if [ ! -z "$TMUX" ]; then
  if $(cd ~/.dot-files; git status -s | grep -q '^.M')
  then
    echo "You have uncommited changes in your dot-files folder. You can push them using push-my-fucking-dot-files"
  else
    UPSTREAM=${1:-'@{u}'}
    LOCAL=$(git rev-parse @)
    REMOTE=$(git rev-parse "$UPSTREAM")
    BASE=$(git merge-base @ "$UPSTREAM")

    if [ $LOCAL = $REMOTE ]; then
      #echo "Up-to-date"
    elif [ $LOCAL = $BASE ]; then
      echo "There's updates for your dot-files folder. You can pull them using pull-my-fucking-dot-files :)"
    else
      echo "Hmmm seems that something went wrong with your dot-files repo... You were playing with the time?"
    fi
  fi
fi

