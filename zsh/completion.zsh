#################################################################
# Inspired by http://git.grml.org/f/grml-etc-core/etc/zsh/zshrc #
#################################################################

# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

# activate color-completion
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# automatically complete 'cd -<tab>' and 'cd -<ctrl-d>' with menu
zstyle ':completion:*:*:cd:*:directory-stack' menu yes select

# ignore duplicate entries
zstyle ':completion:*:history-words' remove-all-dups yes
zstyle ':completion:*:history-words' stop yes

# separate matches into groups
zstyle ':completion:*:matches' group 'yes'
zstyle ':completion:*' group-name ''

# set format for warnings
zstyle ':completion:*:warnings' format $'%{\e[0;31m%}No matches for:%{\e[0m%} %d'

# provide .. as a completion
zstyle ':completion:*' special-dirs ..

# Adds brew zsh-completions
if (( $+commands[brew] ))
then
    fpath=("$(brew --prefix)/share/zsh-completions" $fpath)
    fpath=("$(brew --prefix)/share/zsh/functions" $fpath)
fi
