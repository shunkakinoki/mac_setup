#!/bin/bash

echo "Configuring vim"
rm -f ~/.vim_runtime
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
echo "Done."

echo "Configuring vim myconfig"
rm -f ~/.vim_runtime/my_configs.vim
ln -s ~/.mac_setup/dotfiles/.my_configs.vim ~/.vim_runtime/my_configs.vim
echo "Done."