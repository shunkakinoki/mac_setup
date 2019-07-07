#!/usr/bin/env zsh

### ZSH ALIAS

### MAC SETUP
alias RESET_MACSETUP='rm -rf ~/.mac_setup && curl https://raw.githubusercontent.com/shunkakinoki/mac_setup/master/install.sh | bash'
alias RELOAD='source ~/.zshrc'
alias CHANGE='code ~/.zshrc'
alias CHANGEALL='code ~/.mac_setup'

### SCREEN SAVER
alias SSOFF='defaults -currentHost write com.apple.screensaver idleTime 0'
alias SSON='defaults -currentHost write com.apple.screensaver idleTime 60'
alias SST='defaults -currentHost read com.apple.screensaver idleTime'

### FLUTTER ALIAS
alias FTBUILD='flutter build ios --release --no-codesign'

### LSD ALIAS
alias ls='lsd'