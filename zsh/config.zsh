if [[ -n $SSH_CONNECTION ]]; then
    # hostname:path
    export PS1='%m:%3~ $ '
else
    # path
    export PS1='%3~ $ '
fi

export LSCOLORS="exfxcxdxbxegedabagacad"
export CLICOLOR=true

fpath=($ZSH/functions $fpath)

autoload -U $ZSH/functions/*(:t)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# RTFM: http://zsh.sourceforge.net/Doc/Release/Options.html#Options
# Inspiration: https://github.com/mattjj/my-oh-my-zsh

# Don't run all background jobs at a lower priority
setopt NO_BG_NICE
# Don't send the HUP signal to running jobs when the shell exits
setopt NO_HUP
# Don't beep on an ambiguous completion
setopt NO_LIST_BEEP
# Allow functions to have local options
setopt LOCAL_OPTIONS
# Allow functions to have local traps
setopt LOCAL_TRAPS
# Don’t execute the line directly from history, reload it first into the prompt
setopt HIST_VERIFY
# Append incrementally and share history between sessions
setopt SHARE_HISTORY
# Write the history file in the ":start:elapsed;command" format
setopt EXTENDED_HISTORY
# Enable parameter expansion, command substitution and arithmetic expansion
setopt PROMPT_SUBST
# Try to correct the spelling of commands
setopt CORRECT
# Complete from both ends of a word
setopt COMPLETE_IN_WORD
# Move cursor to the end of a completed word
setopt ALWAYS_TO_END
# Perform path search even on command names with slashes
setopt PATH_DIRS
# Show completion menu on a succesive tab press
setopt AUTO_MENU
# Automatically list choices on an ambiguous completion
setopt AUTO_LIST
# If completed parameter is a directory, add a trailing slash
setopt AUTO_PARAM_SLASH
# Do not autoselect the first completion entry
setopt NO_MENU_COMPLETE
# Do not exit on end-of-file
setopt IGNORE_EOF
# Append history list to the history file rather than replace it
setopt APPEND_HISTORY
# Don't record an entry that was just recorded again
setopt HIST_IGNORE_DUPS
# Remove superfluous blanks before recording entry
setopt HIST_REDUCE_BLANKS
# Expire duplicate entries first when trimming history
setopt HIST_EXPIRE_DUPS_FIRST
# Don't delete old recorded entry if new entry is a duplicate
setopt NO_HIST_IGNORE_ALL_DUPS
# Don't display a line previously found
setopt HIST_FIND_NO_DUPS
# Don't record an entry starting with a space
setopt HIST_IGNORE_SPACE
# Auto cd to a directory without typing cd
setopt AUTO_CD
# Use extended globbing syntax
setopt EXTENDED_GLOB
# Allow the character sequence «''» to signify a single quote within singly quoted strings
setopt RC_QUOTES
# Report the status of background jobs immediately
setopt NOTIFY
# Don't report the status of background and suspended jobs before exiting a shell
setopt NO_CHECK_JOBS
# Print the exit value of programs with non-zero exit status
setopt PRINT_EXIT_VALUE
# Always query the user before executing ‘rm *’ or ‘rm path/*’
setopt NO_RM_STAR_SILENT
# When the last character resulting from a completion is a slash and the next character typed is a word delimiter, a slash, or a character that ends a command, remove the slash
setopt AUTO_REMOVE_SLASH
# Don't require a leading ‘.’ in a filename to be matched explicitly
setopt GLOB_DOTS
# Resolve symbolic links to their true values when changing directory
setopt CHASE_LINKS
# Make cd push the old directory onto the directory stack
setopt AUTO_PUSHD
# Don’t push multiple copies of the same directory onto the directory stack
setopt PUSHD_IGNORE_DUPS
# Don't print the directory stack after pushd or popd
setopt PUSHD_SILENT
# Don't print error when pattern for filename generation has no matches
setopt NO_NOMATCH
# Prevents aliases on the command line from being internally substituted before completion is attempted
setopt COMPLETE_ALIASES

zle -N newtab

bindkey '^[^[[D' backward-word
bindkey '^[^[[C' forward-word
bindkey '^[[5D' beginning-of-line
bindkey '^[[5C' end-of-line
bindkey '^[[3~' delete-char
bindkey '^[^N' newtab
bindkey '^?' backward-delete-char
