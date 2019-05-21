#!/bin/bash

if [[ ! -a ~/.czrc ]]; then
  echo "Configuring commitizen"
  ln -s ~/.mac_setup/dotfiles/.czrc ~/.czrc
fi
