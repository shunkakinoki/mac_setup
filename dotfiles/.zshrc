### PATHS
export N_PREFIX="$HOME/.n"
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/caseywebb/n/bin"
PATH+=:$N_PREFIX/bin

### ALIAS
alias RESET_MACSETUP='rm -rf ~/.mac_setup && curl https://raw.githubusercontent.com/shunkakinoki/mac_setup/master/install.sh | bash'
alias RELOAD='source ~/.zshrc'
alias CHANGE='code ~/.zshrc'

### MAC SETUP SCRIPTS
chmod +x ~/.mac_setup/scripts/*.sh
for script in ~/.mac_setup/scripts/20-*.sh; do source $script; done
for script in ~/.mac_setup/scripts/30-*.sh; do screen -dm -S Shared $script; done

### WIFI SIGNAL
SPACESHIP_WIFI_SHOW="${SPACESHIP_WIFI_SHOW=true}"
SPACESHIP_WIFI_PREFIX="${SPACESHIP_WIFI_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"}"
SPACESHIP_WIFI_SUFFIX="${SPACESHIP_WIFI_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_WIFI_SYMBOL="${SPACESHIP_WIFI_SYMBOL="WIFI "}"
SPACESHIP_WIFI_COLOR="${SPACESHIP_WIFI_COLOR="black"}"

spaceship_wifi(){
    [[ $SPACESHIP_WIFI_SHOW == false ]] && return

    spaceship::exists wifi || return

    local 'wifi_status'

    local output=$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport -I) 
    local airport=$(echo $output | grep 'AirPort' | awk -F': ' '{print $2}')

    if [ "$airport" = "Off" ]; then
        local color='%F{yellow}'
        wifi_status=$("%{$color%}Wifi Off")
    else
        local ssid=$(echo $output | grep ' SSID' | awk -F': ' '{print $2}')
        local speed=$(echo $output | grep 'lastTxRate' | awk -F': ' '{print $2}')
        local color='%F{yellow}'

        [[ $speed -gt 300 ]] && color='%F{green}'
        [[ $speed -lt 100 ]] && color='%F{red}'

        wifi_status=$("%{$color%}\uF1EB $speed Mb/s%{%f%}")
    fi
    [[ -z $wifi_status ]] && return

    spaceship::section \
    "$SPACESHIP_WIFI_COLOR" \
    "$SPACESHIP_WIFI_PREFIX" \
    "${SPACESHIP_WIFI_SYMBOL}${wifi_status}" \
    "$SPACESHIP_WIFI_SUFFIX"
}

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
wifi
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

### TMUX
alias TXWORK="tmux new -s WORK \; \
    send-keys 'gotop' C-m \; \
    split-window -h \; \
    send-keys 'neofetch' C-m \; \
    split-window -v \;"

### ZSH AUTO SUGGESTIONS
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

### ZSH SYNTAX HIGHLIGHTING
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
