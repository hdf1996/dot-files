push-dot-files () {
  cd $DOT_FILES_PATH;
  gaa
  # TODO: Implement DOT_FILES_ASK_FOR_GIT_MESSAGE
  # TODO: Generate better commit message
  # TODO: Silent git messages
  gcm "Updated dot files"
  gpuh
  cd -;
}

pull-dot-files () {
  cd $DOT_FILES_PATH;
  if [[ `git status --porcelain` ]]; then
    echo "You have pending changes to sync, try with export-dot-files"
    return 1
  else
  fi
  cd -;
}

export-dot-files () {
  write-software-versions
  push-dot-files
}
