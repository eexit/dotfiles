#alias reload!='rm -rf ~/.zcomp*; source ~/.zshrc; rehash'
alias reload!='rm -rf ~/.zcomp*; exec $SHELL'
alias cls='clear'
alias less='less --quiet'
alias df='df -h'
alias du='du -hs'
alias history='fc -il 1'
alias hg='history | grep'

# Fast directory change
alias -g ..='cd ..'
alias -g ...='cd ../..'
alias -g ....='cd ../../..'
alias -g .....='cd ../../../..'
alias -g ......='cd ../../../../..'
alias -g .......='cd ../../../../../..'

# Always ask for confirmation before overwriting
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

alias dc='docker-compose'
alias pbcopy='tr -d "\n" | /usr/bin/pbcopy'
alias mailcatcher='mailcatcher --ip=0.0.0.0'
alias phpdebug='PHP_IDE_CONFIG="serverName=localhost" XDEBUG_CONFIG="idekey=PHPSTORM" php -d xdebug.remote_host=localhost -d xdebug.remote_connect_back=0'
