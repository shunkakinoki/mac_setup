### ZSH ALIAS

alias RESET_MACSETUP='rm -rf ~/.mac_setup && curl https://raw.githubusercontent.com/shunkakinoki/mac_setup/master/install.sh | bash'
alias RELOAD='source ~/.zshrc'
alias CHANGE='code ~/.zshrc'
alias CHANGEALL='code ~/.mac_setup'

alias SSOFF='defaults -currentHost write com.apple.screensaver idleTime 0'
alias SSON='defaults -currentHost write com.apple.screensaver idleTime 60'
