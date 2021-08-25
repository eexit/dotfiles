#!/bin/zsh
set -e

mkdir -p ~/Library/Application\ Support/Alfred/Alfred.alfredpreferences/preferences

dirs=(appearance features)

for dir in "${dirs[@]}"
do
    rm -rf ~/Library/Application\ Support/Alfred/Alfred.alfredpreferences/preferences/$dir || true
    cp -R $ZSH/alfred/$dir ~/Library/Application\ Support/Alfred/Alfred.alfredpreferences/preferences/$dir
done

if [ -d ~/Library/Application\ Support/Alfred/Alfred.alfredpreferences/preferences/local ]
then

fi

if [[ ! -d ~/Library/Application\ Support/Alfred/Alfred.alfredpreferences/preferences/local ]]
then 
    echo "Save at least 1 setting for Alfred to bootstrap pref dir, then re-run $ZSH/alfred/install.sh"
    exit 1
fi

localdir=$(/bin/ls -1 ~/Library/Application\ Support/Alfred/Alfred.alfredpreferences/preferences/local)

rm -rf ~/Library/Application\ Support/Alfred/Alfred.alfredpreferences/preferences/local/$localdir/* || true

dirs=(appearance features hotkey)

for dir in "${dirs[@]}"
do
    cp -R $ZSH/alfred/local/$dir ~/Library/Application\ Support/Alfred/Alfred.alfredpreferences/preferences/local/$localdir/$dir
done
