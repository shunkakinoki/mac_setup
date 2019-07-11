#!/bin/bash

echo "Configuring Joplin"
rm -f ~/.config/joplin/keymap.json
if [[ ! -e ~/.config/joplin ]]; then
    mkdir ~/.config/joplin
fi
cp ~/.mac_setup/dotfiles/.joplin.json ~/.config/joplin/keymap.json
echo "Done."