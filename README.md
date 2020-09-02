# eexit dotfiles

Forked from https://github.com/holman/dotfiles.
Cleaned and fed up to fit my needs.

![screenshot.png](screenshot.png)

## Installation

Change you login shell first:

```bash
chsh -s $(which zsh) && exit
```

Install [Homebrew](https://brew.sh):

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

Add a Github API token for `HOMEBREW_GITHUB_API_TOKEN` env var to avoid brew to hit Github API limits in `~/.localrc`

Run this:

```bash
git clone https://github.com/eexit/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

## Things you don't want to share

Put any env variables, Github token env vars, etc. in `~/.localrc` and any other script sourcing that you won't share in `~/.extrarc`.

## SSH Config

The SSH configuration should be as following:

```bash
chmod 600 ~/.ssh/*
chmod 700 ~/.ssh ~/.ssh/cm_socket
chmod 644 ~/.ssh/known_hosts ~/.ssh/*.pub
```

