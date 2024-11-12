#alias reload!='rm -rf ~/.zcomp*; source ~/.zshrc; rehash'
alias reload!='rm -rf ~/.zcomp*; exec $SHELL'
alias cls='clear'
alias less='less --quiet'
alias df='df -h'
alias du='du -hs'
alias history='fc -il 1'
alias hg='history | grep'
alias -g awk='gawk'
alias -g sed='gsed'
alias -g which='gwhich'
alias -g grep='ggrep'
alias -g tar='gtar'
# https://gist.github.com/mihow/9c7f559807069a03e302605691f85572
alias envup='export $(grep -v "^#" .env | xargs)'

# Fast directory change
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'

# Always ask for confirmation before overwriting
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

alias dc='docker compose'
# alias pbcopy='tr -d "\n" | /usr/bin/pbcopy'
#alias phpdebug='PHP_IDE_CONFIG="serverName=localhost" XDEBUG_CONFIG="idekey=PHPSTORM" php -d xdebug.remote_host=localhost -d xdebug.remote_connect_back=0'


alias list-instances="aws ec2 describe-instances \
--filter \"Name=instance-state-name,Values=running\" \
--query \"Reservations[*].Instances[*].[PrivateIpAddress, Tags[?Key=='Name'].Value|[0]]\" \
--output text"
