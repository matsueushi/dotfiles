#!/bin/bash

echo "Loading dotfiles..."

echo "install julia..."
sudo apt update
sudo apt -y install julia

echo "set git identity..."
git config --global user.email matsueushi@gmail.com
git config --global user.name matsueushi

echo "Finished!"