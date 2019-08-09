#!/bin/bash

if [[ ! -n "spaceship_user" ]]; then
  npm install -g spaceship-prompt
fi

if [[ ! -n "git-stats" ]]; then
  npm install -g git-stats
fi

npm update -g