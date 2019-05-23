#!/bin/bash

echo "Configuring tmux"
rm -f ~/.tmux.conf
ln -s ~/.mac_setup/dotfiles/.tmux.conf ~/.tmux.conf
