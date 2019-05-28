### UNIQUE PATHS
export GOPATH=$HOME/go
export GOROOT=/usr/local/bin/go

### PATHS
export HOME="$HOME"
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"
export PATH="/usr/local/miniconda3/bin:$PATH"
export PATH="/usr/local/bin/go:$PATH"
PATH+=:$HOME/n/bin
PATH+=:$HOME/flutter/bin
PATH+=:$HOME/.fastlane/bin
PATH+=:$GOPATH/bin

### MAC SETUP SCRIPTS
chmod +x ~/.mac_setup/scripts/*.sh
for script in ~/.mac_setup/scripts/20-*.sh; do source $script; done
for script in ~/.mac_setup/scripts/30-*.sh; do screen -dm -S Shared $script; done

### SPACESHIP PROMPT
export SPACESHIP_PROMPT_ADD_NEWLINE=false
export SPACESHIP_TIME_PREFIX='| '
export SPACESHIP_TIME_SHOW=true
export SPACESHIP_DIR_SHOW=true
export SPACESHIP_TIME_FORMAT=%D{%Y'/'%m'/'%d'/'%a' | '}%*
export SPACESHIP_CHAR_SYMBOL=$
export SPACESHIP_USER_SHOW=always
export SPACESHIP_USER_PREFIX='| OBLITERATE THE GALAXY | '
export SPACESHIP_USER_COLOR=blue
export SPACESHIP_DIR_PREFIX=
export SPACESHIP_BATTERY_SHOW=always
export SPACESHIP_PROMPT_ORDER=(
battery
time
user
line_sep
dir
host
git
package
docker
aws
conda
exec_time
vi_mode
jobs
exit_code
char 
)

autoload -U promptinit; promptinit
prompt spaceship

### ZSH COMMANDS
unset zle_bracketed_paste
setopt autocd

### ZSH AUTO SUGGESTIONS
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

### ZSH SYNTAX HIGHLIGHTING
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
