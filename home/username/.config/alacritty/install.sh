#!/bin/bash
 
CONFIG_DIR="$HOME/.config/alacritty"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
 
OS_NAME=$(uname -s)
SOURCE_FILE=""
 
case $OS_NAME in
	Linux*)		SOURCE_FILE="linux.toml" ;;
	Darwin*)	SOURCE_FILE="macos.toml" ;;
	*)
		echo "Unknown OS: $OS_NAME"
		exit 1
		;;
esac

mkdir -p "$CONFIG_DIR"
ln -sf "$SCRIPT_DIR/alacritty.toml" "$CONFIG_DIR/alacritty.toml"
ln -sf "$SCRIPT_DIR/$SOURCE_FILE" "$CONFIG_DIR/os_specific.toml"
 
echo "Successfull!"
echo "- $CONFIG_DIR/alacritty.toml -> $SCRIPT_DIR/alacritty.toml"
echo "- $CONFIG_DIR/os_specific.toml -> $SCRIPT_DIR/$SOURCE_FILE"
