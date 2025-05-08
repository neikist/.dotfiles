#!/bin/bash

CONFIG_DIR="$HOME/.continue"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cp "$SCRIPT_DIR/config.yaml" "$CONFIG_DIR/config.yaml"
envsubst < "$CONFIG_DIR/config.yaml"
echo "Continue plugin config installed successful"
