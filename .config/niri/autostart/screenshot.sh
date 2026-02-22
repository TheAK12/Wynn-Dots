#!/usr/bin/env bash

# Take a selection screenshot with grim
geometry=$(slurp)
if [[ -z "$geometry" ]]; then
    echo "Selection cancelled."
    exit 1
fi

# Grab the screenshot and pipe to tesseract, then copy to clipboard
grim -g "$geometry" - | tesseract - stdout | wl-copy
