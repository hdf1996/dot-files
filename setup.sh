#!/usr/bin/env bash

mkdir -p $HOME/.dot-files

git clone git@github.com:hdf1986/dot-files.git $HOME/.dot-files --depth=1 && echo "Cloned repository." || echo "Failed to clone repository"

