#!/bin/bash

echo "This is an automated script designed to install necessary configuration files as they are used by Onni Lampi."
echo "See https://github.com/onnilampi/setup for more details"

# Use colors, but only if connected to a terminal, and that terminal
# supports them.
# Shamelessly copied from oh-my-zsh installation script
if which tput >/dev/null 2>&1; then
    ncolors=$(tput colors)
fi
if [ -t 1 ] && [ -n "$ncolors" ] && [ "$ncolors" -ge 8 ]; then
    RED="$(tput setaf 1)"
    GREEN="$(tput setaf 2)"
    YELLOW="$(tput setaf 3)"
    BLUE="$(tput setaf 4)"
    BOLD="$(tput bold)"
    NORMAL="$(tput sgr0)"
else
    RED=""
    GREEN=""
    YELLOW=""
    BLUE=""
    BOLD=""
    NORMAL=""
fi
# End of copied part

if [[ $EUID -ne 0 ]]
then
    bash -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    echo "${BOLD}Installing Vundle...${NORMAL}"
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 2> /dev/null
    if [ $? == 0 ]
    then
        echo "${GREEN}Installed Vundle${NORMAL}"
    else
        echo "${YELLOW}Vundle is already installed.${NORMAL}"
    fi
    echo "${BOLD}Installing .vimrc...${NORMAL}"
    curl -fsSL raw.githubusercontent.com/onnilampi/setup/master/.vimrc -o ~/.vimrc
    if [ $? == 0 ]
    then
        echo "${GREEN}.vimrc installed!${NORMAL}"
    else
        echo "${RED}Something happened. Check permissions!${NORMAL}"

    fi
    echo "${BOLD}Installing vim plugins...${NORMAL}"
    vim +PluginInstall +qall
    if [ $? == 0 ]
    then
        echo "${GREEN}Vim plugins installed!${NORMAL}"
    else
        echo "${RED}Something happened. Check permissions!${NORMAL}"
    fi
    echo "${BOLD}Installing .zshrc and custom zsh theme...${NORMAL}"
    curl -fsSL raw.githubusercontent.com/onnilampi/setup/master/.zshrc -o ~/.zshrc
    if [ $? == 0 ]
    then
        echo "${GREEN}.zshrc installed!${NORMAL}"
    else
        echo "${RED}Something happened. Check permissions!${NORMAL}"
    fi
    curl -fsSL raw.githubusercontent.com/onnilampi/setup/master/omnez.zsh-theme -o ~/.oh-my-zsh/themes/omnez.zsh-theme
    if [ $? == 0 ]
    then
        echo "${GREEN}Custom zsh theme installed!${NORMAL}"
    else
        echo "${RED}Something happened. Check permissions!${NORMAL}"
    fi
else
    echo "Running as root, now installing git, vim and zsh"
    apt install git vim zsh
    echo "Exiting..."
fi

