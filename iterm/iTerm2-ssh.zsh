
# iTerm2 SSH color-switching — only active inside iTerm2.

[[ -n "$ITERM_SESSION_ID" ]] || return 0

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
    trap "tab-reset" INT EXIT
    tabc ssh
    command ssh $*
}

# compdef _ssh tabc=ssh
alias ssh="colorssh"
