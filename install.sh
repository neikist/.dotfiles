#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

scripts=(
    "$SCRIPT_DIR/home/username/.config/alacritty/install.sh"
    "$SCRIPT_DIR/home/username/.continue/install.sh"
)

for script in "${scripts[@]}"; do
    if [ ! -f "$script" ]; then
        echo "Error: couldn't find $script file!"
        exit 1
    fi
done

for script in "${scripts[@]}"; do
    echo -e "\n▶ Run $script"
    
    if bash "$script"; then
        echo "✓ $script successful executed"
    else
        echo "✗ $script ended with failure"
	exit 1
    fi
done

echo -e "\nAll install scripts were successful!"
