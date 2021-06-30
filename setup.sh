#! /bin/bash

set -e

echo "Installing ripgrep package"
sudo snap install ripgrep --classic
sudo snap alias ripgrep.rg rg

echo "Installing neovim package"
sudo apt install -y software-properties-common
sudo apt install -y neovim

echo "Installing python3"
sudo apt install -y python-dev python3-dev python3-pip
pip3 install neovim

echo "Replacing vim by nvim"
sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
sudo update-alternatives --config vi
sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
sudo update-alternatives --config vim
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
sudo update-alternatives --config editor

echo "Installing vim plugin manager"
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

rm -rf $HOME/.config/nvim
ln -s $PWD $HOME/.config/nvim

echo "Installing plugins"
vim +PlugInstall +qall

echo "Done"
