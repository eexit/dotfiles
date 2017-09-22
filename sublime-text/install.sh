#!/bin/zsh
set -e

installdir="~/Library/Application Support/Sublime Text 3"

if (( $+commands[subl] ))
then
    pckg="$installdir/Installed Packages/Package Control.sublime-package"
    if test -f $pckg
    then
        curl "https://packagecontrol.io/Package%20Control.sublime-package" -o $pckg
    fi
    cp -f User/* "$installdir/Packages/User/"
fi
