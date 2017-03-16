#!/bin/bash

if [[ ! -e ~/.cask ]]
then
    echo "Cloning Cask repo"
    git clone https://github.com/cask/cask.git ~/.cask
fi

cd ~/.emacs.d
$HOME/.cask/bin/cask install
