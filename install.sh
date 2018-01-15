#!/bin/bash

echo "This is an automated script designed to install necessary configuration files as they are used by Onni Lampi."
echo "See https://github.com/onnilampi/setup for more details"

if [[ $EUID -ne 0 ]]
then
    bash -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    echo "Installing Vundle..."
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    if [ $? == 0 ]
    then
        echo "Installed Vundle"
    else
        echo "Vundle is already installed."
    fi
    echo "Installing .vimrc..."
    curl -fsSL raw.githubusercontent.com/onnilampi/setup/master/.vimrc -o ~/.vimrc
    if [ $? == 0 ]
    then
        echo ".vimrc installed!"
    fi
    echo "Installing vim plugins..."
    vim +PluginInstall +qall
    if [ $? == 0 ]
    then
        echo "Vim plugins installed!"
    fi
    echo "Installing .zshrc and custom zsh theme..."
    curl -fsSL raw.githubusercontent.com/onnilampi/setup/master/.zshrc -o ~/.zshrc
    if [ $? == 0 ]
    then
        echo ".zshrc installed!"
    fi
    curl -fsSL raw.githubusercontent.com/onnilampi/setup/master/omnez.zsh-theme -o ~/.oh-my-zsh/themes/omnez.zsh-theme
    if [ $? == 0 ]
    then
        echo "Custom zsh theme installed!"
    fi
else
    echo "Running as root, now installing git, vim and zsh"
    apt install git vim zsh
    echo "Exiting..."
fi

