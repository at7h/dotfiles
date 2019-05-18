#  _____    _
# |__  /___| |__  _ __ ___
#   / // __| '_ \| '__/ __|
#  / /_\__ \ | | | | | (__
# /____|___/_| |_|_|  \___|


# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/jiawei/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

# ZSH_THEME="agnoster"
# ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"

# POWERLEVEL9K_PROMPT_ON_NEWLINE=true
# POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="🙈"
# POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="👉👉 "

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir dir_writable vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs virtualenv ip time)

export TERM="xterm-256color"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=30

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(
    git 
    git-open
    z 
    extract 
    zsh-syntax-highlighting
    zsh-autosuggestions
    virtualenv
    virtualenvwrapper
    catimg
    )

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

setopt HIST_IGNORE_DUPS

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# neovim
alias ope="nvim"
alias vim='nvim'
alias vi='nvim'

# zshrc
alias opezrc='nvim ~/.zshrc'
alias sourcezrc='source ~/.zshrc'
alias opeohmyzsh="nvim ~/.oh-my-zsh"

# git
alias gs="git status"
alias gsm="git summary"
alias ga='git add .'
alias gd='git diff'
alias gf='git fetch'
alias grv='git remote -v'
alias grb='git rebase'
alias gck='git checkout'
alias gbr='git branch'
alias gul="git pull"
alias gus="git push"
alias gl="git log"
alias gc="git commit -m"
alias gm="git merge"
alias gcl='git clone'

# virtualenvwrapper
alias won="workon"
alias deac='deactivate'
alias lsenv='lsvirtualenv'
alias mkenv='mkvirtualenv'
alias rmenv="rmvirtualenv"

# tmux
alias tnew='tmux new -s'
alias tatt='tmux attach'
alias tdet='tmux detach'
 
# common
alias cls='clear'
alias ll='ls -l'
alias la='ls -a'
alias grep="grep --color=auto"
alias cd..="cd .."
alias cd...="cd ../.."
alias cd....="cd ../../.."
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias -s html=nvim
alias -s rb=nvim
alias -s go=nvim
alias -s py=nvim
alias -s js=nvim
alias -s json=nvim
alias -s c=nvim
alias -s txt=nvim
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'

DEFAULT_USER="jiawei"

# virtualenvwrapper
export WORKON_HOME=~/.pyenvs
source /usr/local/bin/virtualenvwrapper.sh

# mysql
PATH="/usr/local/mysql/bin:${PATH}"
export PATH
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib/
export VERSIONER_PYTHON_PREFER_64_BIT=no
export VERSIONER_PYTHON_PREFER_32_BIT=yes
