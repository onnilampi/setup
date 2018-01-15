# Path to your oh-my-zsh installation.
  export ZSH=/home/onni/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
######################################################################3
export EDITOR=vim
#export ZPLUG_HOME="$HOME/.zplug"
#export POWERLINE_HOME="$HOME/.powerline-status"
#
#if [[ ! -d "$ZPLUG_HOME" ]]; then
#    git clone https://github.com/zplug/zplug.git "$ZPLUG_HOME"
#fi
#
#powerline --help &>/dev/null
#POWERLINE_INSTALLED=$?
#if [[ "$POWERLINE_INSTALLED" -ne 0 ]]; then
#    pip3 install --user powerline-status
#    if [[ "$?" -ne 0 ]]; then
#        echo "Looks like something went wrong with pip. Maybe it's not installed?"
#        exit 1
#    fi
#
#    # Install powerline patched fonts
#    git clone https://github.com/powerline/fonts.git "$HOME/.powerline-fonts"
#    # install
#    "$HOME"/.powerline-fonts/install.sh
#    # clean-up a bit
#    rm -rf "$HOME"/.powerline-fonts
#fi
#
#source "$ZPLUG_HOME/init.zsh"
#
##zplug "lib/bzr", from:oh-my-zsh
##zplug "lib/clipboard", from:oh-my-zsh
#zplug "lib/compfix", from:oh-my-zsh
#zplug "lib/completion", from:oh-my-zsh
#zplug "lib/correction", from:oh-my-zsh
#zplug "lib/diagnostics", from:oh-my-zsh
#zplug "lib/directories", from:oh-my-zsh
#zplug "lib/functions", from:oh-my-zsh
#zplug "lib/git", from:oh-my-zsh
#zplug "lib/grep", from:oh-my-zsh
#zplug "lib/history", from:oh-my-zsh
#zplug "lib/key-bindings", from:oh-my-zsh
#zplug "lib/misc", from:oh-my-zsh
#zplug "lib/nvm", from:oh-my-zsh
#zplug "lib/prompt_info_functions", from:oh-my-zsh
#zplug "lib/spectrum", from:oh-my-zsh
#zplug "lib/termsupport", from:oh-my-zsh
#zplug "lib/theme-and-appearance", from:oh-my-zsh
#zplug "zdharma/history-search-multi-word", from:github, defer:2
#zplug "zsh-users/zsh-syntax-highlighting", defer:2
#
#zplug check || zplug install
#zplug load
##########################################################
ZSH_THEME="omnez"
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="$PATH:/home/onni/.cargo/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias gitlog="git log --pretty --graph --oneline --decorate"
alias publish_site="jekyll build;rsync -avp _site onni@onnilampi.fi:/home/onni/sivut-jekyll"
alias sound_sinks="pactl list sinks short"
alias choose_sound="pacmd set-default-sink"
alias update_telegram="wget https://telegram.org/dl/desktop/linux -O /tmp/TG.tar.xz;pushd /tmp;pwd;tar -xf TG.tar.xz;mv -v Telegram/Telegram /home/onni/bin/Telegram/;mv -v Telegram/Updater /home/onni/bin/Telegram/;ls -la Telegram;popd
"
alias sound_control_on="xfce4-terminal --command 'php -S 0.0.0.0:8000 -t /home/onni/projects/PaWebControl/source'"

#zplug


