#!/bin/zsh

echo "Installing homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

/opt/homebrew/bin/brew install mas font-hack-nerd-font

echo "Installing dependencies..." && \
    /opt/homebrew/bin/brew bundle --file ./install/Brewfile

# Required for Amethyst to force MacOS to not re-arrange Spaces based on most recent use
defaults write com.apple.dock workspaces-auto-swoosh -bool NO
killall Dock

