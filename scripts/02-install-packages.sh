#!/bin/bash

if [[ ! $(brew bundle check) ]]; then
  cd ~/.mac_setup

  echo "Restoring homebrew packages from backup"
  brew bundle install

  cd -
fi