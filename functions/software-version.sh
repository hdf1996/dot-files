#!/usr/bin/env bash

versions=(git heroku rbenv tmux python)

get-version-of-git () {
  echo $(git --version | awk '{ print $3 }')
}

get-version-of-python () {
  echo $(python --version 2>&1 | tail -n 1 | awk '{ print $2 }')
}

get-version-of-heroku () {
  echo $((heroku --version 2&> /dev/null) | tail -n 1 | awk '{ print $1 }' | awk -F/ '{ print $2 }')
}

get-version-of-rbenv () {
  echo $(rbenv --version | awk '{ print $2 }' )
}

get-version-of-tmux () {
  echo $(tmux -V | awk '{ print $2 }' )
}

get-software-versions () {
  for i in "${versions[@]}"
  do
    echo "$i: $(get-version-of-${i})"
  done
}

write-software-versions () {
  get-versions > $DOT_FILES_PATH/configs/sotfware-versions
}
