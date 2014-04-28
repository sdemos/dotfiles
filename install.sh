echo "Cloning dotfiles"
hash git >/dev/null && /usr/bin/env git clone git@github.com:stphndemos/dotfiles.git ~/.genconfig || {
  echo "git not installed"
  exit
}

ohmyzshyes=true;

if [ "$1" ]
then
  if [ "$1" == "--no-oh-my-zsh" ]
  then
    ohmyzshyes=false;
  fi
  if [ "$1" == "-h" || "$1" == "--help"]
  then
    echo "usage: ./install.sh [--no-oh-my-zsh] [-h] [--help]"
    exit
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

./resymlink.sh

hash git >/dev/null && /usr/bin/env git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle || {
  echo "git not installed (how did you get here?)"
  exit
}
