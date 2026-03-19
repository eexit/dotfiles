#!/bin/zsh
set -e

GHOSTTY_CONFIG_DIR="$HOME/.config/ghostty"

mkdir -p "$GHOSTTY_CONFIG_DIR"

ln -sf "$ZSH/ghostty/config.ghostty" "$GHOSTTY_CONFIG_DIR/config"
