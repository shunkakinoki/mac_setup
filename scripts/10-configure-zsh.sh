#!/bin/bash

if ! command -v zsh > /dev/null 2>&1; then
  echo "Setting zsh as login shell..."
  chsh -s /usr/local/bin/zsh
fi

if [[ ! -a ~/.zshrc ]]; then
  echo "Configuring zsh..."
  ln -s ~/.mac_setup/dotfiles/.zshrc ~/.zshrc
fi
