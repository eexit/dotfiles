#!/bin/zsh
set -e

mkdir -p ~/Library/Application\ Support/Alfred/Alfred.alfredpreferences/preferences

dirs=(appearence features)

for dir in "${dirs[@]}"
do
    rm -rf ~/Library/Application\ Support/Alfred/Alfred.alfredpreferences/preferences/$dir || true
    ln -s $ZSH/alfred/appearence ~/Library/Application\ Support/Alfred/Alfred.alfredpreferences/preferences/$dir
done

localdir=$(/bin/ls -1 ~/Library/Application\ Support/Alfred/Alfred.alfredpreferences/preferences/local)

rm -rf ~/Library/Application\ Support/Alfred/Alfred.alfredpreferences/preferences/local/$localdir/*

dirs=(appearence features hotkey)

for dir in "${dirs[@]}"
do
    ln -s $ZSH/alfred/local/appearence ~/Library/Application\ Support/Alfred/Alfred.alfredpreferences/preferences/local/$localdir/$dir
done
