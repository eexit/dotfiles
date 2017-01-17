#!/bin/zsh
set -e

packages=(spoof tldr emoj)

for cmd in "${packages[@]}"
do
    (( $+commands[$cmd] )) && npm upgrade -g $cmd || npm install -g $cmd
done

if test ! -f "$ZSH/functions/_npm"
then
    npm completion > "$ZSH/functions/_npm"
fi
