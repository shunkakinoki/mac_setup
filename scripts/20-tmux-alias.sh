### TMUX ALIAS
function TXDASH {
    tmux new -s DASH \;
    send-keys 'gotop' C-m \;
    split-window -h \;
    send-keys 'neofetch' C-m \;
    split-window -v \;
}

alias TXKILLDASH="tmux kill-session -t DASH"

alias TXLS="tmux ls"

alias TXKILLALL="tmux kill-server"