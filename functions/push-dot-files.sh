push-dot-files () {
  cd $DOT_FILES_PATH;
  gaa
  # TODO: Implement DOT_FILES_ASK_FOR_GIT_MESSAGE
  # TODO: Generate better commit message
  gcm "Updated dot files"
  cd -;
}
