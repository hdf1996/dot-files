#!/bin/bash

files=".zshrc .tmux.conf .vimrc .hyper.js"
installation_path=~/
cd ~/.dot-files/
for file in $files; do
  if [ ! \( -L "${installation_path}${file}" \) ]; then
    echo "Creando link simbolico $file";
    ln -s $(pwd)/$file $installation_path$file
  fi
done
