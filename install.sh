#!/bin/bash

if ! command -v brew > /dev/null 2>&1; then
  echo "Installing homebrew"
  yes | ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

if ! command -v git > /dev/null 2>&1; then
  echo "Installing git"
  yes | brew install git
fi

if [ ! -d ~/.mac_setup ]; then
  git clone https://github.com/shunkakinoki/mac_setup.git ~/.mac_setup
fi

chmod +x ~/.mac_setup/scripts/*

for s in ~/.mac_setup/scripts/0*.sh; do source $s; done
for s in ~/.mac_setup/scripts/1*.sh; do source $s; done

zsh
