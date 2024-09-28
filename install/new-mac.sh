#!/bin/zsh

echo "Installing homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing dependencies..." && \
    /opt/homebrew/bin/brew install \
            neovim \
            cmake \
            fd \
            ripgrep \
            font-hack-nerd-font \
            tmux \
            fzf \
            bat \
            eza \
            btop \
            glow

brew install --cask amethyst


