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
    echo "You have pending changes to sync, try exporting your dot files first with export-dot-files"
    return 1
  else
    g pull
  fi
  cd -;
}

export-dot-files () {
  write-software-versions
  push-dot-files
}
