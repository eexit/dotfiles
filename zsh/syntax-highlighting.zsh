# Adds brew zsh-syntax-highlighting
if test $(which brew)
then
    highlighting=$(brew --prefix)'/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh'

    if test -f $highlighting
    then
        source $highlighting
    fi
fi
