function tmux-fa -d 'Open tmux config for frontend/api development' 
    set CWD (pwd)
    set SESSION_NAME $argv

    # detach from a tmux session if in one
    tmux detach > /dev/null

    # Create a new session, -d means detached itself
    tmux new-session -d -s $SESSION_NAME -n 'frontend'

    tmux rename-window -t $SESSION_NAME:1 -n 'frontend'
    tmux new-window -t $SESSION_NAME:2 -n 'api'
    tmux new-window -t $SESSION_NAME:3 -n 'servers'
    tmux split-window -h -t $SESSION_NAME:3

    # Attach to session
    tmux attach-session -t $SESSION_NAME
end
