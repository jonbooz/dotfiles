#!/bin/zsh

echo "Installing homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

/opt/homebrew/bin/brew install mas font-hack-nerd-font

echo "Installing dependencies..." && \
    /opt/homebrew/bin/brew bundle --file ./install/Brewfile

