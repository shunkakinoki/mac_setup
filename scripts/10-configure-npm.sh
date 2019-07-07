#!/bin/bash

if [[ ! -n "spaceship_user" ]]; then
  npm install -g spaceship-prompt
fi

npm update -g