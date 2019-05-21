### PATHS
export N_PREFIX="$HOME/.n"
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/caseywebb/n/bin"
PATH+=:$N_PREFIX/bin

### ALIAS
alias RELOAD='source ~/.zshrc

chmod +x ~/.mac_setup/scripts/*.sh

for script in ~/.mac_setup/scripts/20-*.sh; do source $script; done
for script in ~/.mac_setup/scripts/30-*.sh; do screen -dm -S Shared $script; done

autoload -U promptinit; promptinit
prompt spaceship
