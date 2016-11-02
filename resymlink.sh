
echo "Linking Files"
ln -sf ~/.genconfig/vim ~/.vim
ln -sf ~/.genconfig/xmonad ~/.xmonad
ln -f ~/.genconfig/vimrc ~/.vimrc
ln -f ~/.genconfig/zshrc ~/.zshrc
ln -f ~/.genconfig/xinitrc ~/.xinitrc
ln -f ~/.genconfig/Xdefaults ~/.Xdefaults
ln -f ~/.genconfig/gitignore_global ~/.gitignore_global
hash git >/dev/null && /usr/bin/env git config --global core.excludesfile ~/.gitignore_global || {
  echo "git not installed (how did you get here?)"
  exit
}
