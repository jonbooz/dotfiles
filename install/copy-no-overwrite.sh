#!/bin/zsh

echo "Creating required directories..."
mkdir -p ~/.bin/
mkdir -p ~/.config/nvim/
mkdir -p ~/.config/zsh

echo "Copying: nvim/  -> ~/.config/nvim/" && rsync -avhH nvim/ ~/.config/nvim/

echo "Copying: zprofile -> ~/.zprofile" && cp zprofile ~/.zprofile
echo "Copying: zshrc -> ~/.zshrc" && cp zshrc ~/.zshrc
echo "Copying: zsh/ -> ~/.config/zsh" && rsync -avhH zsh/ ~/.config/zsh/

echo "Copying: tmux.conf -> ~/.tmux.conf" && cp tmux.conf ~/.tmux.conf

echo "Copying: bin/  -> ~/.bin/" && rsync -avhH bin/ ~/.bin/
