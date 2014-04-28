
echo "Linking Files"
ln -sf ~/.genconfig/.vim_backup ~/.vim
ln -sf ~/.genconfig/.xmonad_git ~/.xmonad
ln -f ~/.genconfig/.*rc* ~/
ln -f ~/.genconfig/.Xdefaults ~/
ln -f ~/.genconfig/.Xresources ~/
ln -f ~/.genconfig/.gitignore_global
hash git >/dev/null && /usr/bin/env git config --global core.excludesfile ~/.gitignore_global || {
  echo "git not installed (how did you get here?)"
  exit
}
