#!/usr/bin/env bash

# ========================= crontab Usage ===========================
# Add the following line to your crontab 
# 1 0 1 * * /bin/bash "$HOME/.config/brew/archive_brew_logs.sh"
# ========================================================================

# export BREWDOTS="$HOME/.config/brew"      # Uncomment if not set in env.zsh
LOGDIR="$BREWDOTS/logs"
MAINLOG="$LOGDIR/brew-activity.log"
CURMONTH=$(date +%Y-%m)
ARCHIVE="$LOGDIR/brew-activity-${CURMONTH}.log"

# Only archive if non-empty log exists
[[ -s "$MAINLOG" ]] && mv "$MAINLOG" "$ARCHIVE" && touch "$MAINLOG" && \
    echo "📦 Archived brew log → $ARCHIVE"
