#!/bin/bash -e

echo "Linking Directories"
ln -sfT ~/.genconfig/vim ~/.vim
ln -sfT ~/.genconfig/xmonad ~/.xmonad

mkdir -p ~/.config
ln -sfT ~/.genconfig/vim ~/.config/nvim

echo "Linking Files"
mkdir -p ~/.ssh
mkdir -p ~/.stack
ln -f ~/.genconfig/sshconfig ~/.ssh/config
ln -f ~/.genconfig/stackconfig.yaml ~/.stack/config.yaml

ln -f ~/.genconfig/dmrc ~/.dmrc
ln -f ~/.genconfig/fehbg ~/.fehbg
ln -f ~/.genconfig/gitconfig ~/.gitconfig
ln -f ~/.genconfig/gitignore_global ~/.gitignore_global
ln -f ~/.genconfig/tmux.conf ~/.tmux.conf
ln -f ~/.genconfig/vimrc ~/.vimrc
ln -f ~/.genconfig/xbindkeysrc ~/.xbindkeysrc
ln -f ~/.genconfig/Xdefaults ~/.Xdefaults
ln -f ~/.genconfig/xinitrc ~/.xinitrc
ln -f ~/.genconfig/xprofile ~/.xprofile
ln -f ~/.genconfig/zshrc ~/.zshrc
