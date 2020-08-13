#!/bin/zsh
set -e

cwd=$(pwd)
code=~/Library/Application\ Support/Code/User

if (( $+commands[code] ))
then
    cd $code
    # To generate the exentsion list: $ code --list-extensions
    while read l; do
        code --install-extension "$l"
    done < extensions.list
    rm -rf keybindings.json settings.json
    ln -s $cwd/keybindings.json keybindings.json
    ln -s $cwd/settings.json settings.json
    cd $cwd
fi
