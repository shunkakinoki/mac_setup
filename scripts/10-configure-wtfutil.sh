#!/bin/bash

if [[ ! -a ~/.config/wtf/config.yml ]]; then
  echo "Linking wtfutil"
  ln -s ~/.mac_setup/dotfiles/.config.yaml ~/.config/wtf/config.yml
  echo "Done."
fi
