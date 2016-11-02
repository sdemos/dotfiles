echo "Cloning dotfiles"
git clone git@github.com:stphndemos/dotfiles.git ~/.genconfig
curl -L https://github.com/stphndemos/oh-my-zsh/raw/master/tools/install.sh | sh

~/.genconfig/resymlink.sh
