### PATHS
export N_PREFIX="$HOME/.n"
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/caseywebb/n/bin"
PATH+=:$N_PREFIX/bin

### ALIAS
alias RELOAD='source ~/.zshrc'

### MAC SETUP SCRIPTS
chmod +x ~/.mac_setup/scripts/*.sh
for script in ~/.mac_setup/scripts/20-*.sh; do source $script; done
for script in ~/.mac_setup/scripts/30-*.sh; do screen -dm -S Shared $script; done

### SPACESHIP PROMPT
export SPACESHIP_PROMPT_ADD_NEWLINE=false
export SPACESHIP_TIME_SHOW=true
export SPACESHIP_DIR_SHOW=false
export SPACESHIP_TIME_FORMAT=%D{%Y'/'%m'/'%d'/'%a' | '}%*
export SPACESHIP_CHAR_SYMBOL=$
export SPACESHIP_USER_SHOW=always
export SPACESHIP_USER_PREFIX='*OBLITERATE THE GALAXY*'

autoload -U promptinit; promptinit
prompt spaceship
