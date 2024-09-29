#!/bin/zsh

read "ssh_email?Enter email for ssh key: "

ssh-keygen -t ed25519 -C "$ssh_email"
eval "$(ssh-agent -s)"

mkdir -p ~/.ssh/
echo "Host github.com" >> ~/.ssh/config
echo "  AddKeysToAgent yes" >> ~/.ssh/config
echo "  UseKeychain yes" >> ~/.ssh/config
echo "  IdentityFile ~/.ssh/id_ed25519" >> ~/.ssh/config

ssh-add --apple-use-keychain ~/.ssh/id_ed25519

pbcopy < ~/.ssh/id_ed25519.pub

xcode-select --install
