#!/bin/bash

echo "Configuring tmux"
rm ~/.tmux.conf
ln -s ~/.mac_setup/dotfiles/.tmux.conf ~/.tmux.conf
