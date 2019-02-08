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

export-dot-files () {
  write-software-versions
  push-dot-files
}
