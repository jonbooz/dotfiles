#!/bin/zsh

echo "Creating required directories..."
mkdir -p ~/.config/nvim/

echo "Copying: nvim/  -> ~/.config/nvim/" && rsync -avhH --delete nvim/ ~/.config/nvim/
