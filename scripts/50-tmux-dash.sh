# Inspired by https://gist.github.com/dmkash/2355219

SESSION_NAME="DASH"

tmux has-session -t ${SESSION_NAME}

if [ $? != 0 ]
then
    # Create the session
    tmux new-session -s ${SESSION_NAME} -d

    # First window (0) -- vim and console
    tmux send-keys -t ${SESSION_NAME} 'gotop' C-m
    tmux split-window -h -t ${SESSION_NAME}:0
    tmux send-keys -t ${SESSION_NAME} 'neofetch' C-m
    tmux split-window -v -t ${SESSION_NAME}:0
    tmux clock-mode -t ${SESSION_NAME}:0

    # Start out on the first window when we attach
    tmux select-window -t ${SESSION_NAME}:0
fi
tmux attach -t ${SESSION_NAME}