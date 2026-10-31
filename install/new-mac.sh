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
# commit) comes from this repo's nvim/, installed by install/copy.sh. Don't
# clone the starter: it's unpinned and copy.sh replaces it anyway. After
# copying, open nvim once; lazy.nvim installs the locked versions. To
# update plugins: :Lazy update, then ./sync-nvim.sh and commit
# nvim/lazy-lock.json.
mkdir -p ~/.config/nvim

# Required for Amethyst to force MacOS to not re-arrange Spaces based on most recent use
defaults write com.apple.dock workspaces-auto-swoosh -bool NO
killall Dock

echo "Installing tmux plugin manager..." && git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
