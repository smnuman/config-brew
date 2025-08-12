#!/usr/bin/env bash

BREWFILE="$HOME/.config/brew/Brewfile"

if [[ -f "$BREWFILE" ]]; then
    echo "🔄 Restoring from Brewfile..."
    brew bundle --file="$BREWFILE"
else
    echo "❌ Brewfile not found!"
fi
# # Check if the restore was successful
# if [[ $? -eq 0 ]]; then
#     echo "✅ Brew restore completed successfully."
# else
#     echo "❌ Brew restore failed."
# fi