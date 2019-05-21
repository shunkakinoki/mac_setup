### PATHS
export N_PREFIX="$HOME/.n"
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/caseywebb/n/bin"
PATH+=:$N_PREFIX/bin

### ALIAS
alias RESET='rm -rf ~/.mac_setup && curl https://raw.githubusercontent.com/shunkakinoki/mac_setup/master/install.sh | bash'
alias TMWORK='bash ~/.mac_setup/utils/work_tmux.sh'
alias RELOAD='source ~/.zshrc'
alias CHANGE='code ~/.zshrc'

### MAC SETUP SCRIPTS
chmod +x ~/.mac_setup/scripts/*.sh
for script in ~/.mac_setup/scripts/20-*.sh; do source $script; done
for script in ~/.mac_setup/scripts/30-*.sh; do screen -dm -S Shared $script; done

### SPACESHIP PROMPT
export SPACESHIP_PROMPT_ADD_NEWLINE=false
export SPACESHIP_TIME_PREFIX='| '
export SPACESHIP_TIME_SHOW=true
export SPACESHIP_DIR_SHOW=false
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

### ZSH AUTO SUGGESTIONS
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

### ZSH SYNTAX HIGHLIGHTING
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
