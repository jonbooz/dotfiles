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
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git

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
curl -sS https://starship.rs/install.sh | sh
