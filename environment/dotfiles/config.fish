if status is-interactive
and not set -q TMUX
    exec tmux -u new -A -D -t f4h
end

function fish_greeting
    echo Hello Augusto! You are currently logged in $hostname
end

source ~/.asdf/asdf.fish

starship init fish | source