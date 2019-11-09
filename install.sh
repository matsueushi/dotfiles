#!/bin/bash
# ubuntu

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

# install docker
echo "install docker..."
sudo apt -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt update
sudo apt -y install docker-ce docker-ce-cli containerd.io

echo "finished!"