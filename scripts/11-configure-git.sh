#!/bin/bash

if [[ ! -a ~/.gitconfig ]]; then
  echo "Linking .gitconfig"
  ln -s ~/.mac_setup/dotfiles/.gitconfig ~/.gitconfig
  echo "Done."
fi
