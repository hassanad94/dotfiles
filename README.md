# Dotfiles

My personal configuration files and settings for macOS.

## Contents

- **Zsh**: Shell configuration (`.zshrc`)
- **Git**: Git configuration (`.gitconfig`)
- **Warp**: Warp terminal settings (`.warp/`)
- **VS Code**: VS Code settings and extensions (`.vscode/`)
- **Claude**: Claude AI configuration (`.claude/`)
- **Pi**: Pi-related configurations (`.pi/`)

## Installation

To set up these dotfiles on a new machine:

1. Clone this repository:
   ```bash
   git clone https://github.com/YOUR_USERNAME/dotfiles.git ~/dotfiles
   ```

2. Create symlinks (adjust paths as needed):
   ```bash
   ln -s ~/dotfiles/.zshrc ~/.zshrc
   ln -s ~/dotfiles/.gitconfig ~/.gitconfig
   ln -s ~/dotfiles/.warp ~/.warp
   ln -s ~/dotfiles/.vscode ~/.vscode
   ln -s ~/dotfiles/.claude ~/.claude
   ln -s ~/dotfiles/.pi ~/.pi
   ```

## Sync Script

Run `sync.sh` to backup changes (if you create one).