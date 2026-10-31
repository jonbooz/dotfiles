#!/bin/bash

sudo apt update

echo "Installing dependencies... " &&
  sudo apt install -y vim \
    neovim \
    npm \
    fd-find \
    ripgrep \
    cmake \
    zsh \
    fzf \
    bat \
    gpg \
    lazygit \
    unzip

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

# Alias bat correctly
mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat

# Alias fd correctly
ln -s $(which fdfind) ~/.local/bin/fd

echo "Installing eza... "
sudo mkdir -p /etc/apt/keyrings
wget -qO- https://raw.githubusercontent.com/eza-community/eza/main/deb.asc | sudo gpg --dearmor -o /etc/apt/keyrings/gierens.gpg
echo "deb [signed-by=/etc/apt/keyrings/gierens.gpg] http://deb.gierens.de stable main" | sudo tee /etc/apt/sources.list.d/gierens.list
sudo chmod 644 /etc/apt/keyrings/gierens.gpg /etc/apt/sources.list.d/gierens.list
sudo apt update
sudo apt install -y eza

echo "Installing starship..."
# Pinned; bump deliberately (https://github.com/starship/starship/releases).
STARSHIP_VERSION=v1.22.1
curl -sS https://starship.rs/install.sh | sh -s -- --yes --version "$STARSHIP_VERSION"

echo "Installing homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
/home/linuxbrew/.linuxbrew/bin/brew install zoxide
