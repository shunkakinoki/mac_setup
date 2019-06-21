### UNIQUE PATHS
export GOPATH=$HOME/.go
export GOBIN=$GOPATH/bin
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

### PATHS
export HOME="$HOME"
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"
PATH+=:$HOME/n/bin
PATH+=:$HOME/flutter/bin
PATH+=:$HOME/.fastlane/bin

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

### ZSH AUTO SUGGESTIONS
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

### ZSH SYNTAX HIGHLIGHTING
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

## ADDITIONAL CONFIG
autoload -Uz compinit
typeset -i updated_at=$(date +'%j' -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)
if [ $(date +'%j') != $updated_at ]; then
  compinit -i
else
  compinit -C -i
fi
zmodload -i zsh/complist

# Save history so we get auto suggestions
HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=$HISTSIZE

# Options
setopt auto_cd # cd by typing directory name if it's not a command
setopt auto_list # automatically list choices on ambiguous completion
setopt auto_menu # automatically use menu completion
setopt always_to_end # move cursor to end if word had one match
setopt hist_ignore_all_dups # remove older duplicate entries from history
setopt hist_reduce_blanks # remove superfluous blanks from history items
setopt inc_append_history # save history entries as soon as they are entered
setopt share_history # share history between different instances
setopt correct_all # autocorrect commands
setopt interactive_comments # allow comments in interactive shells

# Improve autocompletion style
zstyle ':completion:*' menu select # select completions with arrow keys
zstyle ':completion:*' group-name '' # group results by category
zstyle ':completion:::::' completer _expand _complete _ignored _approximate # enable approximate matches for completion
