session="WORK"
tmux start-server

tmux new-session -d -s $session

tmux selectp -t 1 
tmux send-keys "gotop" C-m 

tmux send-keys "neofetch" C-m 

tmux selectp -t 2

tmux selectp -t 3
tmux send-keys "htop" C-m 

tmux selectp -t 1

tmux new-window -t $session:1 -n FREE

tmux select-window -t $session:0

tmux attach-session -t $session