session="WORK"

tmux start-server

tmux new-session -d -s $session

tmux send-keys "gotop" C-m

tmux split-window -h

tmux send-keys "neofetch" C-m

tmux split-window

tmux send-keys "htop" C-m 

tmux selectp -t 1
