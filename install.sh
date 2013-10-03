echo "Cloning dotfiles"
hash git >/dev/null && /usr/bin/env git clone https://github.com/stphndemos/dotfiles.git ~/.genconfig || {
  echo "git not installed"
  exit
}

echo "Linking Files"
ln -s ~/.genconfig/.vim ~/.vim
ln ~/.genconfig/.*rc ~/
