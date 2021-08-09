function tmux-hortis -d 'Open tmux config for Hortis development' 
    set CWD (pwd)
    set SESSION_NAME "hortis"

    # detach from a tmux session if in one
    tmux detach > /dev/null

    # Create a new session, -d means detached itself
    tmux new-session -d -s $SESSION_NAME -n 'frontend'

    tmux rename-window -t $SESSION_NAME:1 -n 'frontend'
    tmux new-window -t $SESSION_NAME:2 -n 'api'
    tmux new-window -t $SESSION_NAME:3 -n 'servers'
    tmux split-window -h -t $SESSION_NAME:3
    tmux new-window -t $SESSION_NAME:4 -n 'git'
    tmux split-window -h -t $SESSION_NAME:4

    tmux send-keys -t $SESSION_NAME:1 C-z 'cd ~/work/botsoft-frontend' Enter
    tmux send-keys -t $SESSION_NAME:2 C-z 'cd ~/work/botsoft-api' Enter
    tmux send-keys -t $SESSION_NAME:3.0 C-z 'cd ~/work/botsoft-frontend' Enter
    tmux send-keys -t $SESSION_NAME:3.1 C-z 'cd ~/work/botsoft-api' Enter
    tmux send-keys -t $SESSION_NAME:4.0 C-z 'cd ~/work/botsoft-frontend' Enter
    tmux send-keys -t $SESSION_NAME:4.1 C-z 'cd ~/work/botsoft-api' Enter

    # Attach to session
    tmux attach-session -t $SESSION_NAME
end
