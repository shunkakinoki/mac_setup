### UNIQUE PATHS
export GOPATH=$HOME/.go
export GOBIN=$GOPATH/bin
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

### PATHS
export HOME="$HOME"
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
PATH+=:$HOME/n/bin
PATH+=:$HOME/flutter/bin
PATH+=:$HOME/.fastlane/bin
PATH+=:$HOME/.rvm/bin

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
export SPACESHIP_GIT_SYMBOL='▼ '
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

### PYENV COMMANDS
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PIPENV_VENV_IN_PROJECT=true

### ZSH COMMANDS
unset zle_bracketed_paste
setopt autocd
__CF_USER_TEXT_ENCODING=0x1F5:0x8000100:0x8000100
export __CF_USER_TEXT_ENCODING

## ADDITIONAL CONFIG
autoload -Uz compinit
typeset -i updated_at=$(date +'%j' -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)
if [ $(date +'%j') != $updated_at ]; then
  compinit -i
else
  compinit -C -i
fi
zmodload -i zsh/complist

# HISTORY OPTIONS
HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=$HISTSIZE

# SETOPT OPTIONS
setopt auto_cd
setopt auto_list 
setopt auto_menu
setopt always_to_end
setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt inc_append_history
setopt share_history
setopt correct_all
setopt interactive_comments

# IMPROVE AUTOCOMPLETION STYLE
zstyle ':completion:*' menu select
zstyle ':completion:*' group-name ''
zstyle ':completion:::::' completer _expand _complete _ignored _approximate

# LOAD ANTIBODY PLUGIN MANAGER
source <(antibody init)

# INSTALL PLUGINS
antibody bundle zdharma/fast-syntax-highlighting
antibody bundle zsh-users/zsh-autosuggestions
antibody bundle zsh-users/zsh-history-substring-search
antibody bundle zsh-users/zsh-completions
antibody bundle marzocchi/zsh-notify