#!/bin/bash

echo "loading dotfiles..."

echo "install git..."
sudo apt update
sudo apt -y install git-all
git config --global include.path ~/dotfiles/gitconfig

echo "clone git repository..."
if [ ! -d ~/dotfiles ]; then
    git clone https://github.com/matsueushi/dotfiles.git ~/dotfiles
fi

# install julia
bash install-julia.sh

echo "finished!"