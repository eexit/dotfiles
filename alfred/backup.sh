#!/bin/zsh
set -e

dirs=(appearance features)

for dir in "${dirs[@]}"
do
    cp -R ~/Library/Application\ Support/Alfred/Alfred.alfredpreferences/preferences/$dir $ZSH/alfred
done

localdir=$(/bin/ls -1 ~/Library/Application\ Support/Alfred/Alfred.alfredpreferences/preferences/local)

if [[ -z "$localdir" ]]
then 
    echo "No prefs to backups"
    exit 1
fi

dirs=(appearance features hotkey)

for dir in "${dirs[@]}"
do
    cp -R ~/Library/Application\ Support/Alfred/Alfred.alfredpreferences/preferences/local/$localdir/$dir $ZSH/alfred/local
done
