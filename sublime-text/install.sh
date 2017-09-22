#!/bin/zsh
set -e

cwd=$(pwd)
s3=~/Library/Application\ Support/Sublime\ Text\ 3

if (( $+commands[subl] ))
then
    cd $s3
    pckg=./Installed\ Packages/Package\ Control.sublime-package
    if [ ! -e $pckg ]
    then
        curl https://packagecontrol.io/Package%20Control.sublime-package -o $pckg
    fi
    rm -rf ./Packages/User
    ln -s $ZSH/sublime-text/User ./Packages/
    cd $cwd
fi
