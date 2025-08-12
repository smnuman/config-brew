#!/usr/bin/env bash

cd "$HOME/.config/brew"

if [ ! -d .git ]; then
    git init >/dev/null
    git add Brewfile
    git commit -m "Initial Brewfile" >/dev/null
else
    git add Brewfile
    git commit -m "Update: $(date '+%F %T')" >/dev/null 2>&1
fi
# Ensure the remote repository is set