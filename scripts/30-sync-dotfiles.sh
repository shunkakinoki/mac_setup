#!/usr/bin/env zsh

cd ~/.mac_setup

if git status | grep -q dotfiles; then
  git add dotfiles/
  sh -c "git commit -m \":heart_eyes: (dotfiles) [automated] sync dotfiles\" && git push" 2>&1 > /dev/null
fi

cd -
