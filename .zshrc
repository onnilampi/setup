# Path to your oh-my-zsh installation.
export ZSH=${HOME}/.oh-my-zsh
export EDITOR=vim
ZSH_THEME="omnez"
plugins=(git)
source $ZSH/oh-my-zsh.sh
alias gitlog="git log --pretty --graph --oneline --decorate"
# Custom configurations can be found at .custrc
source .custrc

