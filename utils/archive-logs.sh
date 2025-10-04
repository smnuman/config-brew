#!/usr/bin/env bash

# Better to use "archive_brew_logs.sh" under "~/.config/brew" folder
#  this might be a duplicate trial script
# export BREWDOTS="$HOME/.config/brew"      # Uncomment if not set in env.zsh
LOGDIR="$BREWDOTS/logs"
# LOGDIR="$HOME/.config/brew/logs"
CURMONTH=$(date '+%Y-%m')
LOGFILE="$LOGDIR/brew-activity.log"
ARCHIVE="$LOGDIR/brew-activity-$CURMONTH.log"

if [ -f "$LOGFILE" ]; then
    cp "$LOGFILE" "$ARCHIVE"
    : > "$LOGFILE"
fi
