#!/bin/zsh

RESET=""
if [[ $1 == "reset" ]]; then
    RESET="--delete"
fi

echo "Creating required directories..."
mkdir -p ~/.bin/
mkdir -p ~/.config/nvim/
mkdir -p ~/.config/zsh
mkdir -p ~/.config/tmux/
mkdir -p ~/.config/skhd/

echo "Copying: nvim/  -> ~/.config/nvim/" && rsync -avhH $RESET nvim/ ~/.config/nvim/
echo "Copying: skhd/  -> ~/.config/skhd/" && rsync -avhH $RESET skhd/ ~/.config/skhd/
echo "Copying: ghostty/  -> ~/.ghostty/skhd/" && rsync -avhH $RESET ghostty/ ~/.config/ghostty/

echo "Copying: zprofile -> ~/.zprofile" && cp zprofile ~/.zprofile
echo "Copying: zshrc -> ~/.zshrc" && cp zshrc ~/.zshrc
echo "Copying: zsh/ -> ~/.config/zsh" && rsync -avhH $RESET zsh/ ~/.config/zsh/

echo "Copying: starship.toml -> ~/.config/" && cp starship.toml ~/.config/starship.toml

echo "Copying: tmux.conf -> ~/.tmux.conf" && cp tmux.conf ~/.tmux.conf
if [[ "$OSTYPE" == "darwin"* ]]; then
    cp tmux/mac.conf ~/.config/tmux/local.conf
else
    cp tmux/local.conf ~/.config/tmux/local.conf
fi
