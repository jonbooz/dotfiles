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
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git

# Required for Amethyst to force MacOS to not re-arrange Spaces based on most recent use
defaults write com.apple.dock workspaces-auto-swoosh -bool NO
killall Dock

