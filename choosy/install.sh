#!/bin/zsh
set -e

rm -rf ~/Library/Application\ Support/Choosy/behaviours.plist
ln -s $ZSH/choosy/behaviours.plist ~/Library/Application\ Support/Choosy/behaviours.plist
