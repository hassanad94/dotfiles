# Dotfiles

My personal configuration files and settings for macOS.

## Contents

- **Zsh**: Shell configuration (`.zshrc`)
- **Git**: Git configuration (`.gitconfig`)
- **Warp**: Warp terminal settings (`.warp/`)
- **mise**: CLI tool versions (`mise.toml`)
- **Brew**: Package list (`Brewfile`)

## Fresh Machine Setup

```bash
# 1. Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# 2. Clone dotfiles
git clone https://github.com/hassanad94/dotfiles.git ~/dotfiles

# 3. Install brew packages (includes mise)
brew bundle install --file=~/dotfiles/Brewfile

# 4. Symlink configs
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/mise.toml ~/.config/mise/config.toml

# 5. Reload shell and install CLI tools
source ~/.zshrc
mise install

# 6. Install global bun packages
bun add -g @earendil-works/pi-coding-agent
```

## Adding a New CLI Tool

```bash
# Add to mise.toml and install
mise use -g <tool>@latest
```

Then commit `mise.toml`.
