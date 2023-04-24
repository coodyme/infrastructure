if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_greeting
    echo Hello Augusto!
    echo The time is (set_color yellow; date +%T; set_color normal) and this machine is called $hostname
end

if not set -q TMUX
    set -g TMUX tmux new-session -d -s base
    eval $TMUX
    tmux attach-session -d -t base
end

starship init fish | source