echo "Cloning dotfiles"
hash git >/dev/null && /usr/bin/env git clone https://github.com/stphndemos/dotfiles.git ~/.genconfig || {
  echo "git not installed"
  exit
}

ohmyzshyes = true;

if [ "$1" ]
then
  if [ "$1" == "--no-oh-my-zsh" ]
  then
    ohmyzshyes = false;
  fi
  if [ "$1" == "-h" || "$1" == "--help"]
  then
    echo "usage: ./install.sh [--no-oh-my-zsh] [-h] [--help]"
  fi
fi

if [ $ohmyzshyes ]
then
  hash curl >/dev/null && /usr/bin/env curl -L https://github.com/stphndemos/oh-my-zsh/raw/master/tools/install.sh | sh || {
    hash wget >/dev/null && /usr/bin/env wget --no-check-certificate https://github.com/stphndemos/oh-my-zsh/raw/master/tools/install.sh -O - | sh || {
      echo "needs curl or wget to continue (how did you get here?)"
      echo "you can use --no-oh-my-zsh to skip this part and install it manually"
      exit
    }
  }
fi

echo "Linking Files"
ln -sf ~/.genconfig/.vim ~/.vim
ln -f ~/.genconfig/.*rc ~/
