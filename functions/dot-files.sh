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

  echo "$original_dot_file" >> "$DOT_FILES_PATH/config/dotfiles"
  echo "$(sort -u "$DOT_FILES_PATH/config/dotfiles" | uniq)" > "$DOT_FILES_PATH/config/dotfiles"

  echo "Added!"
}

link-dot-files () {
  while read -r line; do
    path_to_link=$(echo "$DOT_FILES_PATH/dots/$line")
    if [ -f $HOME/$line ]
    then
      # TODO: Check if the file is already a link to the correct path.
      #       If that's the case, show a message telling that the file were already linked
      #       Otherwise, show an option to get the diff decide what to do (keep, delete, ignore)
      echo "$line already exists! Maybe you need to link it manually. Check the content and do ln -s $path_to_link $HOME/$line if needed"
    else
      ln -s $path_to_link $HOME/$line
      echo "$line linked!"
    fi
  done < $DOT_FILES_PATH/configs/dotfiles
}
