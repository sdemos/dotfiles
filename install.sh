echo "Cloning dotfiles"
hash git >/dev/null && /usr/bin/env git clone https://github.com/stphndemos/dotfiles.git ~/.config || {
  echo "git not installed"
  exit
}

echo "Linking Files"
ln -s ~/.config/.vim ~/.vim
ln ~/.config/.*rc ~/
