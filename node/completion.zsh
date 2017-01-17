# Adds npm completions
if (( $+commands[brew] && $+commands[npm] ))
then
    completion=`brew --prefix`/share/zsh-completions/_npm

    if test ! -f $completion
    then
        mkdir -p dirname $completion
    fi

    npm completion > $completion
fi
