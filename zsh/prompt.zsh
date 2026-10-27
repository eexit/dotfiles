fpath=("$(brew --prefix)/share/zsh/site-functions" $fpath)
autoload -U promptinit; promptinit
eval "$(starship init zsh)"
