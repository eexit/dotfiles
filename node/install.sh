#!/bin/zsh
set -e

packages=(spoof tldr emoj pure-prompt)

for cmd in "${packages[@]}"
do
    (( $+commands[$cmd] )) && npm upgrade -g $cmd || npm install -g $cmd
done

if test ! -f "$ZSH/zsh/functions/_npm"
then
    npm completion > "$ZSH/zsh/functions/_npm"
fi
