add-dot-file () {
  original_dot_file=$(basename -- $1)
  final_dot_file=$(echo "$DOT_FILES_PATH/dots/$original_dot_file")
  if [ -f $final_dot_file ]
  then
    echo "That file were already added!"
    return 1
  fi

  echo "Adding $original_dot_file file"
  echo "From $1 to path $final_dot_file"

  mv $1 $final_dot_file
  ln -s $final_dot_file $1

  echo "$original_dot_file" >> "$DOT_FILES_PATH/dotfiles-manifest"
  echo "$(sort -u "$DOT_FILES_PATH/dotfiles-manifest" | uniq)" > "$DOT_FILES_PATH/dotfiles-manifest"

  echo "Added!"
}
