#!/bin/bash

if [[ $EUID -ne 0 ]]
then
    if [ 'git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim' ] 
    then
        sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
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
        sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
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
    exit 1
fi
