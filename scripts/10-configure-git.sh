#!/bin/bash

if [[ ! -a ~/.gitconfig ]]; then
  echo "Linking .gitconfig"
  ln -s ~/.mac_setup/dotfiles/.gitconfig ~/.gitconfig
  echo "Done."
fi

if [[ ! -a ~/.gitalias.txt ]]; then
  echo "Curling .gitalias.txt"
  curl -O https://raw.githubusercontent.com/GitAlias/gitalias/master/gitalias.txt
  mv gitalias.txt ~/.gitalias.txt
  echo "Done."
fi