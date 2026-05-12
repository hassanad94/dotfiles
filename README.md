# Dotfiles

My personal configuration files for macOS.

## Structure

```
dotfiles/
├── .zshrc              # Interactive shell config
├── .zshenv             # PATH for all shells + GUI apps
├── .gitconfig          # Git identity and settings
├── .gitignore          # Global git ignores
├── Brewfile            # Homebrew packages
├── sync.sh             # Symlink everything to home
└── config/
    ├── mise/           # Dev tool versions (go, node, bun, python)
    └── nvim/           # Neovim config (lazy.nvim)
```

## Fresh Machine Setup

```bash
# 1. Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# 2. Clone dotfiles
git clone https://github.com/hassanad94/dotfiles.git ~/dotfiles

# 3. Install brew packages (includes mise, git, gh, z, fzf...)
brew bundle install --file=~/dotfiles/Brewfile

# 4. Symlink all configs
chmod +x ~/dotfiles/sync.sh && ~/dotfiles/sync.sh

# 5. Install dev tools
mise install

# 6. Install global bun packages
bun add -g @earendil-works/pi-coding-agent
```

## Adding a CLI Tool

```bash
# Runtime (go, node, python, bun...)
mise use -g <tool>@latest  # then commit config/mise/config.toml

# Brew package
# Add to Brewfile, then: brew bundle install --file=~/dotfiles/Brewfile

# Global bun package
bun add -g <package>       # then add to README step 6
```
