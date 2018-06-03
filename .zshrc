export ZSH=~/.oh-my-zsh

ZSH_THEME="cloud"
DOT_FILES=~/.dot-files
plugins=(zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

for f in $DOT_FILES/aliases/**/*.sh; do source $f; done
for f in $DOT_FILES/paths/**/*.sh; do source $f; done

q() { cd ~/workspace/$1 }
qa() { atom ~/workspace/$1 }
qw() { cd ~/wolox/$1 }
qwa() { atom ~/wolox/$1 }



export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

[ -f /usr/local/opt/nvm/nvm.sh ] &&  . "/usr/local/opt/nvm/nvm.sh"

if [ ! -z "$TMUX" ]; then
if $(cd ~/.dot-files; git status -s | grep -q '^.M'); then
  echo "You have uncommited changes in your dot-files folder. You can push them using push-my-fucking-dot-files"
fi
fi

[ -s "/home/hugo/.jabba/jabba.sh" ] && source "/home/hugo/.jabba/jabba.sh"

export PATH=/home/hugo/.local/bin:$PATH
export PATH="$PATH:/opt/mssql-tools/bin"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

source $HOME/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# added by travis gem
[ -f /Users/hfarji/.travis/travis.sh ] && source /Users/hfarji/.travis/travis.sh
if [ -f /home/hugo/.bashmelon ]; then
  export BASHMELON_PATH=/home/hugo/.bashmelon
  source /home/hugo/.bashmelon/bin/init
fi
if [ -f /home/hfarji/.bashmelon ]; then
  export BASHMELON_PATH=/Users/hfarji/.bashmelon
  source /Users/hfarji/.bashmelon/bin/init
fi
