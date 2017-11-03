export ZSH=~/.oh-my-zsh

ZSH_THEME="robbyrussell"
DOT_FILES=~/.dot-files
plugins=(git bundler gem npm rails)

source $ZSH/oh-my-zsh.sh
for f in $DOT_FILES/aliases/*.sh; do source $f; done

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

export PATH="$HOME/.rbenv/bin:$PATH"

eval "$(rbenv init -)"
[ -s "/home/hugo/.jabba/jabba.sh" ] && source "/home/hugo/.jabba/jabba.sh"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/work
export PATH="$PATH:$HOME/.rvm/bin"

source ~/.dot-files/functions/screen.sh
export PATH=/home/hugo/.local/bin:$PATH
export ANDROID_HOME=/home/hugo/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export PATH="$PATH:/opt/mssql-tools/bin"
