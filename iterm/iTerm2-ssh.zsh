
function tabc() {
  NAME=${1:-eexit}
  # if you have trouble with this, change
  # "Default" to the name of your default theme
  echo -e "\033]50;SetProfile=$NAME\a"
}

function tab-reset() {
    NAME="eexit"
    echo -e "\033]50;SetProfile=$NAME\a"
    trap - INT EXIT
}

function colorssh() {
    if [[ -n "$ITERM_SESSION_ID" ]]; then
        trap "tab-reset" INT EXIT
        #if [[ "$*" =~ ".*" ]]; then
            tabc ssh
        #fi
    fi
    ssh $*
}

# compdef _ssh tabc=ssh
alias ssh="colorssh"
