echo "Linking Files"
ln -sfT ~/.genconfig/vim ~/.vim
ln -sfT ~/.genconfig/xmonad ~/.xmonad
ln -f ~/.genconfig/vimrc ~/.vimrc
ln -f ~/.genconfig/zshrc ~/.zshrc
ln -f ~/.genconfig/xinitrc ~/.xinitrc
ln -f ~/.genconfig/Xdefaults ~/.Xdefaults
ln -f ~/.genconfig/gitignore_global ~/.gitignore_global

echo "Reconfiguring"
git config --global core.excludesfile ~/.gitignore_global
