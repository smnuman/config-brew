# 🍺 Homebrew Configuration

Centralized Homebrew package management for macOS development environment.

## 📦 What's Inside

This repository contains a curated `Brewfile` that manages:
- **CLI Tools** - Modern replacements and utilities (bat, eza, fzf, etc.)
- **Development Tools** - Git, Node.js, Neovim, language servers
- **Applications** - VSCode, VLC, AltTab, TextMate
- **Fonts** - Geist, Geist Mono, Nerd Fonts
- **VSCode Extensions** - Complete extension manifest for reproducible setup

## 🚀 Quick Start

### Fresh Install
```bash
# Install Homebrew (if not already installed)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Clone this repo (or use parent .config repo)
cd ~/.config/brew

# Install everything
brew bundle --file=Brewfile
```

### Update Brewfile
```bash
# After installing new packages/apps/extensions
cd ~/.config/brew
brew bundle dump --force --describe
```

## 📋 Package Categories

### CLI Tools
- **bat** - Better `cat` with syntax highlighting
- **eza** - Modern `ls` replacement
- **fzf** - Fuzzy finder for command line
- **zoxide** - Smarter `cd` command
- **htop** - Interactive process viewer
- **tree** - Directory structure visualization

### Development
- **git** + **git-delta** + **git-crypt** - Version control suite
- **gh** / **glab** - GitHub/GitLab CLI tools
- **neovim** - Modern Vim editor
- **node** + **fnm** - JavaScript runtime & version manager
- **gnupg** - Encryption and signing

### Applications
- **Visual Studio Code** - Primary code editor
- **AltTab** - Windows-style window switcher
- **VLC** - Media player
- **TextMate** - Lightweight text editor

### Fonts
- **Geist** - Modern sans-serif font family
- **Geist Mono** - Monospace variant
- **Geist Mono Nerd Font** - With icons and glyphs

## 🔄 Sync Across Machines

This Brewfile is designed to be **version-controlled** and **synchronized** across machines:

```bash
# On Machine A: Export current setup
brew bundle dump --force --describe

# Commit and push
git add Brewfile
git commit -m "Update Brewfile"
git push

# On Machine B: Pull and install
git pull
brew bundle --file=Brewfile
```

## 🛠️ Utilities

### `brewx`
Custom utility script for Homebrew operations (check `./brewx` for details).

### Logs
Homebrew operation logs stored in `./logs/` (gitignored).

## 📁 Structure

```
brew/
├── Brewfile           # Main package manifest
├── brewx              # Custom utility script
├── utils/             # Helper scripts
├── logs/              # Operation logs (gitignored)
└── README.md          # This file
```

## 🔧 Maintenance

### Update All Packages
```bash
brew update && brew upgrade && brew cleanup
```

### Check for Issues
```bash
brew doctor
```

### Remove Orphaned Dependencies
```bash
brew autoremove
```

### Sync Brewfile with Installed Packages
```bash
# Generate fresh Brewfile from current installation
brew bundle dump --force --describe
```

## 🔐 Security Notes

- **git-crypt** enabled for sensitive config files (if applicable)
- **gnupg** installed for GPG key management
- No credentials stored in this repository

## 📖 Related Documentation

- [Homebrew Official Docs](https://docs.brew.sh)
- [Homebrew Bundle](https://github.com/Homebrew/homebrew-bundle)
- Parent Config: `~/.config/` (dotfiles management)

## 💡 VSCode Extension Management

VSCode extensions are managed via Brewfile using the `vscode` directive:

```ruby
vscode "publisher.extension-name"
```

To export currently installed extensions:
```bash
code --list-extensions | xargs -I {} echo 'vscode "{}"' >> Brewfile
```

## 🌐 Platform Support

- **macOS** - Full support (primary platform)
- **Linux** - Partial support (Homebrew on Linux)
- **Windows** - Not supported (use WSL2 + Homebrew on Linux)

## 📝 License

Part of personal dotfiles configuration. Use freely, modify as needed.

---

**Last Updated:** 2025-10-05
**Maintained by:** [@smnuman](https://github.com/smnuman)
