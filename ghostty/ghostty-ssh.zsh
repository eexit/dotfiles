# Ghostty SSH color-switching — only active inside Ghostty.
# OSC 11 sets the background color; OSC 111 resets to the profile default.

[[ "$TERM_PROGRAM" == "ghostty" ]] || return 0

GHOSTTY_SSH_COLOR=${GHOSTTY_SSH_COLOR:-#3d1f1f}

function ghostty-color() {
    printf '\033]11;%s\007' "$1"
}

function ghostty-reset() {
    printf '\033]111\007'
    trap - INT EXIT
}

function colorssh() {
    trap 'ghostty-reset' INT EXIT
    ghostty-color "$GHOSTTY_SSH_COLOR"
    command ssh "$@"
}

# compdef _ssh colorssh=ssh
alias ssh="colorssh"
