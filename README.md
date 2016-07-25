# eexit dotfiles

Forked from https://github.com/holman/dotfiles.
Cleaned and fed up to fit my needs.

![screenshot.png](screenshot.png)

## Installation

Run this:

```sh
git clone https://github.com/eexit/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

### Things you don't want to share

Put any env variables, Github token env vars, etc. in `~/.localrc` and any other script sourcing that you won't share in `~/.extrarc`.

