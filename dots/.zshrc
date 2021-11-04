export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vi'
else
  export EDITOR='nano'
fi

DOT_FILES_PATH="$HOME/.dot-files"

for f in $DOT_FILES_PATH/aliases/**/*.sh; do source $f; done
for f in $DOT_FILES_PATH/functions/**/*.sh; do source $f; done
for f in $DOT_FILES_PATH/configs/**/*.sh; do source $f; done
for f in $DOT_FILES_PATH/paths/**/*.sh; do source $f; done

[ -s "/home/hugo/.jabba/jabba.sh" ] && source "/home/hugo/.jabba/jabba.sh"

export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export JAVA_HOME=$HOME/.jabba/jdk/1.8.192
ZSH_THEME="robbyrussell"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm


# added by travis gem
[ -f /Users/hfarji/.travis/travis.sh ] && source /Users/hfarji/.travis/travis.sh
export AWS_PROFILE=digitalocean
