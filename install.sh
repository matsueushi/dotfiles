#!/bin/bash

cd ~

echo "loading dotfiles..."
ln -snvf ~/dotfiles/bashrc .bashrc

echo "install git..."
sudo apt update
sudo apt -y install git-all
git config --global include.path ~/dotfiles/gitconfig

echo "clone git repository..."
if [ ! -d ~/dotfiles ]; then
    git clone https://github.com/matsueushi/dotfiles.git ~/dotfiles
fi

# install python
bash ~/dotfiles/install-python.sh

# install julia
bash ~/dotfiles/install-julia.sh

echo "finished!"