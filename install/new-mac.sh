#!/bin/zsh

echo "Installing homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

/opt/homebrew/bin/brew install mas font-hack-nerd-font

echo "Installing dependencies..." && \
    /opt/homebrew/bin/brew bundle --file ./install/Brewfile

# Install LazyVim
mv ~/.config/nvim{,.bak}
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
# The LazyVim config (and lazy-lock.json, which pins every plugin to a
# commit) is this repo's nvim/, which install/link.sh links to ~/.config/nvim.
# Don't clone the starter: it's unpinned. Open nvim once after linking;
# lazy.nvim installs the locked versions. To update plugins: :Lazy update,
# then commit nvim/lazy-lock.json (the link means it's already in the repo).

# Required for Amethyst to force MacOS to not re-arrange Spaces based on most recent use
defaults write com.apple.dock workspaces-auto-swoosh -bool NO
killall Dock

echo "Installing tmux plugin manager..." && git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
