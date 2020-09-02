#!/bin/zsh
set -e

cwd=$(pwd)
code=~/Library/Application\ Support/Code/User

if (( $+commands[code] ))
then
    mkdir -p $code && cd $code
    # To generate the exentsion list: $ code --list-extensions
    while read l; do
        code --install-extension "$l"
    done < $ZSH/vsc/extensions.list
    rm -rf keybindings.json settings.json || true
    ln -s $ZSH/vsc/keybindings.json keybindings.json
    ln -s $ZSH/vsc/settings.json settings.json
    cd $cwd
fi
