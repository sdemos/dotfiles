######################
# .zshrc             #
# author: stphndemos #
######################

# get the name of the operating system for os specific settings
osname=$(uname)
LINUX=
MAC=
#FEDORA=
#DEBIAN=
#GENTOO=
#EXHERBO=
if [[ $osname == "Linux" ]] then
    # set linux to true (well, really, anything, as long as it exists)
    LINUX=true
    # when I figure out how to use /etc/os-release to get the NAME, this is where I will set the distro variables
elif [[ $osname == "Darwin" ]] then
    # set mac to true
    MAC=true
fi

# general oh-my-zsh configurations
ZSH=$HOME/.oh-my-zsh
COMPLETION_WAITING_DOTS="true"
CASE_SENSITIVE="true"
ZSH_THEME="demos"
plugins=(git cp colored-man git-extras themes tmux common-aliases zsh-completions)
if [[ -n $LINUX ]] then
    # set plugins if it's linux
    plugins=($plugins cabal systemd yum debian pip python)
elif [[ -n $MAC ]] then
    # set other plugins for mac
    plugins=($plugins brew ttodev)
fi

# run with the oh-my-zsh settings set above this
source $ZSH/oh-my-zsh.sh

# update path with otherwise ignored directories
if [[ -n $LINUX ]] then
    # path additions for linux
    export PATH=/home/demos/.local/bin:/home/demos/.bin/bin:/home/demos/.cabal/bin:$PATH:/usr/lib64/qt-3.3/bin:/usr/local/bin:/usr/bin:/bin:/home/demos/bin:/usr/local/sbin:/usr/sbin:/usr/local/netbeans-8.0rc1/bin
elif [[ -n $MAC ]] then
    # path additions for mac
    # this on is specifically for my intuit dev machine, if I get another mac for whatever reason this needs to change
    export PATH=$PATH:/Users/sdemos/ttodev
fi

# auto-generated lines by zsh-newuser and compinstall
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=5000
setopt appendhistory autocd extendedglob notify
unsetopt beep nomatch
autoload -Uz compinit
compinit

# set my editor to vim (for tools like sudoedit)
export EDITOR="nvim"
alias vim="nvim"

# Aliases to make things easier
alias py3='python3'
alias power='acpi'

# Alias tmux to handle 256 colors
alias tmux='TERM=xterm-256color tmux -2'

# alias ls based on os
if [[ -n $LINUX ]] then
    # set for linux
    alias ls='ls --color=auto --classify'
elif [[ -n $MAC ]] then
    # set for mac
    alias ls='ls -G'
fi

# stupid java UI fixing thing
export _JAVA_AWT_WM_NONREPARENTING=1

# set python virtualenv settings
export WORKON_HOME=~/.pythonenvs
export VIRTUALENVWRAPPER_PYTHON='/usr/bin/python3'
#source /usr/local/bin/virtualenvwrapper.sh

# for rust
export LD_LIBRARY_PATH='/usr/local/lib'

export JAVA_HOME=/usr/java/latest/

# for go...sigh
export GOPATH=/home/demos/.gopath
export PATH=$PATH:$GOPATH/bin
