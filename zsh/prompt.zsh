powerline_precmd() {
    export PS1="$($ZSH/powerline-shell/powerline-shell-master/powerline-shell.py $? --cwd-max-depth=5 --shell=zsh 2> /dev/null)"
}

install_powerline_precmd() {
    for s in "${precmd_functions[@]}"; do
        if [ "$s" = "powerline_precmd" ]; then
        return
    fi
    done
    precmd_functions+=(powerline_precmd)
}

if [ "$TERM" != "linux" ]; then
    install_powerline_precmd
fi
