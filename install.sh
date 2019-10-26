#!/bin/bash

echo "Loading dotfiles..."

echo "install julia..."
# git is also intalled
sudo apt update
sudo apt -y install julia

# clone git repository
if [ ! -d ~/dotfiles ]; then
    git clone https://github.com/matsueushi/dotfiles.git ~/dotfiles
fi

# git config
git config --global include.path ~/dotfiles/gitconfig

julia -e 'Pkg.add("Pkg")'
julia -e 'import Pkg; Pkg.add(["FileIO", "Images", "Flux"])'

echo "Finished!"