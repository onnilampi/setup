#!/bin/bash

echo "This is an automated script designed to install necessary configuration files as they are used by Onni Lampi."
echo "See https://github.com/onnilampi/setup for more details"

if [[ $EUID -ne 0 ]]
then
    if [ 'git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim' ] 
    then
        bash -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
        curl -fsSL raw.githubusercontent.com/onnilampi/setup/master/.vimrc -o ~/.vimrc
        if [ $? == 0 ]
        then
            echo ".vimrc installed!"
        fi
        vim +PluginInstall +qall
        echo "Installing .zshrc and custom zsh theme"
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
        echo "Vundle is already installed"
        bash -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
        curl -fsSL raw.githubusercontent.com/onnilampi/setup/master/.vimrc -o ~/.vimrc
        if [ $? == 0 ]
        then
            echo ".vimrc installed!"
        fi
        vim +PluginInstall +qall
        echo "Installing .zshrc and custom zsh theme"
        curl -fsSL raw.githubusercontent.com/onnilampi/setup/master/.zshrc -o ~/.zshrc
        if [ $? == 0 ]
        then
            echo ".zshrc installed!"
        fi
        curl -fsSL raw.githubusercontent.com/onnilampi/setup/master/omnez.zsh-theme -o ~/.oh-my-zsh/themes/omnez.zsh-theme
        if [ $? == 0 ]
        then
            echo "Custom zsh theme  installed!"
        fi
    fi
else
    echo "Running as root, now installing git, vim and zsh"
    apt install git vim zsh
    echo "Exiting..."
fi

