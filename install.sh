#/bin/bash

rm ~/.zshrc

ln -s $PWD/aria2/.aria2 ~/.aria2
ln -s $PWD/nvim ~/.config/nvim
ln -s $PWD/kitty ~/.config/kitty
ln -s $PWD/ranger ~/.config/ranger
ln -s $PWD/.zshrc ~/.zshrc

cd ~/.config/nvim && ./install.sh
