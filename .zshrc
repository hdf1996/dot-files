export ZSH=~/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git bundler gem npm rails)

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
alias t="tonode"
alias ta="tonode add"
alias tl="tonode list"

alias github=GitHub

function GitHub()
{
  if [ ! -d .git ] ; 
    then echo "ERROR: This isnt a git directory" && return false; 
  fi
  git_url=`git config --get remote.origin.url`  
  git_branch=`git rev-parse --abbrev-ref HEAD 2>/dev/null`
  if [[ $git_url == https://github* ]];
  then
    url=${git_url%.git}/tree/${git_branch}
  else
    if [[ $git_url == git@github.com* ]]
    then
      url="https://github.com/${${git_url:15}%.git}/tree/${git_branch}"
    else
      echo "ERROR: Remote origin is invalid" && return false;
    fi
  fi
  google-chrome $url
}

q() { cd ~/workspace/$1 }
qa() { atom ~/workspace/$1 }
qw() { cd ~/wolox/$1 }
qwa() { atom ~/wolox/$1 }

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
