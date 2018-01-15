# Path to your oh-my-zsh installation.
export ZSH=${HOME}/.oh-my-zsh
export EDITOR=vim
ZSH_THEME="omnez"
plugins=(git)
source $ZSH/oh-my-zsh.sh
alias gitlog="git log --pretty --graph --oneline --decorate"
alias sound_control_on="xfce4-terminal --command 'php -S 0.0.0.0:8000 -t /home/onni/projects/PaWebControl/source'"


