### TMUX ALIAS
alias TXDASH="tmux new -s DASH \; \
    send-keys 'gotop' C-m \; \
    split-window -h \; \
    send-keys 'neofetch' C-m \; \
    split-window -v \;"

alias TXKILLDASH="tmux kill-session -t DASH"

alias TXKILLALL="tmux kill-server"