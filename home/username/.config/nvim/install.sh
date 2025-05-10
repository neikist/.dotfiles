#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIG_DIR="$HOME/.config/nvim"

ln -sf "$SCRIPT_DIR/init.lua" "$CONFIG_DIR/init.lua"
ln -sf "$SCRIPT_DIR/lua" "$CONFIG_DIR/lua"

echo "Neovim config successful installed!"
