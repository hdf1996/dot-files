#!/usr/bin/env bash
files=".zshrc .tmux.conf"
installation_path=$HOME/
cd $HOME/.dot-files/

mkdir -p backup
for file in $files; do
  echo "Copying symlink: $file";
  mv ${installation_path}${file} backup/$file-$(date +"%d-%m-%Y").old
  ln -s $HOME/.dot-files/dots/$file $installation_path/$file 
done