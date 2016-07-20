#!/bin/sh

set -e

# Go to current dir
cd "$(dirname $0)"

if test ! -d $ZSH/powerline-shell/powerline-shell-master
then
    echo "Installing powerline-shell"
    wget https://github.com/eexit/powerline-shell/archive/master.zip
    unzip master.zip
    rm -f master.zip
fi

echo "Copying powerline-shell custom template"
cp config.py ./powerline-shell-master

echo "Generating powerline-shell"
cd ./powerline-shell-master
python ./install.py
