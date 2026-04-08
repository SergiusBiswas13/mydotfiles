#!/usr/bin/env bash

set -e

DOTFILES_DIR="$HOME/mydotfiles"
CONFIG_DIR="$HOME/.config"

DIRS=(
  hypr
  kitty
  rofi
  waybar
  nvim
)

for dir in "${DIRS[@]}"; do
    src="$DOTFILES_DIR/$dir"
    dest="$CONFIG_DIR/$dir"

    echo "Replacing $dest"

    rm -rf "$dest"
    ln -s "$src" "$dest"
done

echo "Done."

