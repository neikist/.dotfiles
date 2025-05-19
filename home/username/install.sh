#!/bin/bash

CONFIG_DIR="$HOME"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ln -sf "$SCRIPT_DIR/.ideavimrc" "$CONFIG_DIR/.ideavimrc"
 
