export ZSH=~/.oh-my-zsh

ZSH_THEME="robbyrussell"
DOT_FILES=~/.dot-files
plugins=()

source $ZSH/oh-my-zsh.sh
for f in $DOT_FILES/aliases/*.sh; do source $f; done
for f in $DOT_FILES/paths/*.sh; do source $f; done

q() { cd ~/workspace/$1 }
qa() { atom ~/workspace/$1 }
qw() { cd ~/wolox/$1 }
qwa() { atom ~/wolox/$1 }

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

if [ ! -z "$TMUX" ]; then
if $(cd ~/.dot-files; git status -s | grep -q '^.M'); then
  echo "You have uncommited changes in your dot-files folder. You can push them using push-my-fucking-dot-files"
fi
fi

[ -s "/home/hugo/.jabba/jabba.sh" ] && source "/home/hugo/.jabba/jabba.sh"

export PATH=/home/hugo/.local/bin:$PATH
export PATH="$PATH:/opt/mssql-tools/bin"
