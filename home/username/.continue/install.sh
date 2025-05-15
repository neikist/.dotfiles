#!/bin/bash

CONFIG_DIR="$HOME/.continue"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [[ -f "$CONFIG_DIR/config.yaml" ]]; then
    rm -f "$CONFIG_DIR/config.yaml"
fi
envsubst < "$SCRIPT_DIR/config.yaml" >> "$CONFIG_DIR/config.yaml" 
echo "Continue plugin config installed successful"
