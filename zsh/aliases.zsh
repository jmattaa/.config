alias t="tmux"
tn() {
    if [ -z "$1" ]; then
        session_name="$(basename "$(pwd)")"
    else
        session_name="$1-$(basename "$(pwd)")"
    fi
    tmux new -s "$session_name"
} 

alias fcd="source ~/.fcd/fcd"

# alias thefuck
eval $(thefuck --alias)

lynx() {
    /usr/bin/lynx -cfg="~/.config/lynx/lynx.cfg" -lss="~/.config/lynx/lynx.lss" "$@"
}

duck() {
    lynx "https://lite.duckduckgo.com/lite?kd=-1&kp=-1&q=$@"
}

alias '?'=duck
