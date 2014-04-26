export WORKON_HOME=~/.pythonenvs
export VIRTUALENVWRAPPER_PYTHON='/usr/bin/python3'
#source /usr/local/bin/virtualenvwrapper.sh


#oh-my-zsh configurations
ZSH=$HOME/.oh-my-zsh
COMPLETION_WAITING_DOTS="true"
CASE_SENSITIVE="true"
ZSH_THEME="demos"
plugins=(git battery cp colored-man git-extras github lol safe-paste themes tmux systemd yum common-aliases debian gitfast pip python svn virtualenvwrapper wd)
source $ZSH/oh-my-zsh.sh
export PATH=$PATH:/usr/lib64/qt-3.3/bin:/usr/local/bin:/usr/bin:/bin:/home/demos/bin:/usr/local/sbin:/usr/sbin:/usr/local/netbeans-8.0rc1/bin:/home/demos/.cabal/bin
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=5000
setopt appendhistory autocd extendedglob notify
unsetopt beep nomatch
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall

autoload -Uz compinit
compinit
# End of lines added by compinstall

export EDITOR="vim"

alias ls='ls --color=auto'
alias py3='python3'

export EDITOR='vim'

export _JAVA_AWT_WM_NONREPARENTING=1
