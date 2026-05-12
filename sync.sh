#!/bin/bash

DOTFILES="$HOME/dotfiles"
BACKUP="$HOME/.dotfiles-backup/$(date +%Y%m%d_%H%M%S)"

link() {
  local src="$1" dest="$2"
  if [ -e "$dest" ] && [ ! -L "$dest" ]; then
    mkdir -p "$BACKUP"
    mv "$dest" "$BACKUP/$(basename "$dest")"
    echo "  backed up: $dest"
  fi
  ln -sf "$src" "$dest"
  echo "  linked: $dest"
}

echo "Syncing dotfiles..."

# Home files
for f in .zshrc .zshenv .gitconfig .gitignore; do
  link "$DOTFILES/$f" "$HOME/$f"
done

# .pi
link "$DOTFILES/.pi" "$HOME/.pi"

# ~/.config entries
mkdir -p "$HOME/.config"
for d in mise nvim; do
  link "$DOTFILES/config/$d" "$HOME/.config/$d"
done

# LaunchAgents (GUI app environment)
mkdir -p "$HOME/Library/LaunchAgents"
for plist in "$DOTFILES/Library/LaunchAgents/"*.plist; do
  name=$(basename "$plist")
  link "$plist" "$HOME/Library/LaunchAgents/$name"
  launchctl load "$HOME/Library/LaunchAgents/$name" 2>/dev/null
done

echo "Done! Restart any GUI apps to pick up the new PATH."
