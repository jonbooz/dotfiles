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

echo "Copying: nvim/  -> ~/.config/nvim/" && rsync -avhH $RESET nvim/ ~/.config/nvim/

echo "Copying: zprofile -> ~/.zprofile" && cp zprofile ~/.zprofile
echo "Copying: zshrc -> ~/.zshrc" && cp zshrc ~/.zshrc
echo "Copying: zsh/ -> ~/.config/zsh" && rsync -avhH $RESET zsh/ ~/.config/zsh/

echo "Copying: gitconfig -> ~/.gitconfig" && cp gitconfig ~/.gitconfig

echo "Copying: tmux.conf -> ~/.tmux.conf" && cp tmux.conf ~/.tmux.conf
if [[ "$OSTYPE" == "darwin"* ]]; then
    cp tmux/mac.conf ~/.config/tmux/local.conf
else
    cp tmux/local.conf ~/.config/tmux/local.conf
fi

echo "Copying: bin/  -> ~/.bin/" && rsync -avhH $RESET bin/ ~/.bin/
