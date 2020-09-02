#!/bin/zsh
set -e
rm -rf ~/Library/Preferences/com.knollsoft.Rectangle.plist || true
ln -s $ZSH/rectangle/com.knollsoft.Rectangle.plist ~/Library/Preferences/com.knollsoft.Rectangle.plist
