#!/usr/bin/env bash

versions=(git heroku rbenv)

get-version-of-git () {
  echo $(git --version | awk '{ print $3 }')
}

get-version-of-heroku () {
  echo $(heroku --version | awk '{ print $1 }' | awk -F/ '{ print $2 }')
}

get-version-of-rbenv () {
  echo $(rbenv --version | awk '{ print $2 }' )
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
