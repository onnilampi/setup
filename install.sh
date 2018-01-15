#!/bin/bash

sudo apt install git vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
curl https://onnilampi.fi/static/vimrc >> ~/.vimrc
vim +PluginInstall +qall
