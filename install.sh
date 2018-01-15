#!/bin/bash

if [[ $EUID -ne 0 ]]
then
    if [ 'git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim' ] 
    then
        sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
        curl -fsSL onnilampi.fi/static/vimrc >> ~/.vimrc
        vim +PluginInstall +qall
    else
        echo "Vundle is already installed"
        sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
        curl -fsSL onnilampi.fi/static/vimrc >> ~/.vimrc
        vim +PluginInstall +qall
    fi

else
    echo "Running as root, now installing git, vim and zsh"
    apt install git vim zsh
    echo "Exiting..."
    exit 1
fi
