#!/bin/bash

if ! command -v brew > /dev/null 2>&1; then
  echo "Installing homebrew"
  yes | ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

if ! command -v git > /dev/null 2>&1; then
  echo "Installing git"
  yes | brew install git
fi

if [ ! -d ~/.laptop ]; then
  git clone https://github.com/caseyWebb/laptop.git ~/.laptop
fi

chmod +x ~/.laptop/scripts/*

for s in ~/.laptop/scripts/0*.sh; do source $s; done
for s in ~/.laptop/scripts/1*.sh; do source $s; done

zsh
