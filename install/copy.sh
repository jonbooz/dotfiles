#!/bin/zsh

echo "Creating required directories..."
mkdir -p ~/.config/nvim/
mkdir -p ~/.config/zsh

echo "Copying: nvim/  -> ~/.config/nvim/" && rsync -avhH --delete nvim/ ~/.config/nvim/

echo "Copying: zprofile -> ~/.zprofile" && cp zprofile ~/.zprofile
echo "Copying: zshrc -> ~/.zshrc" && cp zshrc ~/.zshrc
echo "Copying: zsh/ -> ~/.config/zsh" && rsync -avhH --delete zsh/ ~/.config/zsh/

