#!/bin/bash

echo "loading dotfiles..."

echo "install git..."
sudo apt update
sudo apt -y install git-all
# git config
git config --global include.path ~/dotfiles/gitconfig

echo "clone git repository..."
if [ ! -d ~/dotfiles ]; then
    git clone https://github.com/matsueushi/dotfiles.git ~/dotfiles
fi

echo "install julia..."
JULIA_PATH=/usr/local/julia

curl -o /tmp/julia.tar.gz "https://julialang-s3.julialang.org/bin/linux/x64/1.2/julia-1.2.0-linux-x86_64.tar.gz"
mkdir "$JULIA_PATH"
tar -xzf /tmp/julia.tar.gz -C "$JULIA_PATH"

# julia -e 'Pkg.add("Pkg")'
# julia -e 'import Pkg; Pkg.add(["FileIO", "Images", "Flux"])'

echo "finished!"