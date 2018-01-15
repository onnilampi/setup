# Path to your oh-my-zsh installation.
export ZSH=/home/${USER}/.oh-my-zsh
export EDITOR=vim
ZSH_THEME="omnez"
plugins=(git)
export PATH="$PATH:/home/${USER}/.cargo/bin"
source $ZSH/oh-my-zsh.sh
alias gitlog="git log --pretty --graph --oneline --decorate"
alias sound_control_on="xfce4-terminal --command 'php -S 0.0.0.0:8000 -t /home/onni/projects/PaWebControl/source'"


