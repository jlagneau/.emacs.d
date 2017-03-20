#!/bin/bash

if [[ ! -e ~/.cask ]]
then
    echo "Cloning Cask repo"
    git clone https://github.com/cask/cask.git $HOME/.cask
fi

pushd $HOME/.emacs.d

$HOME/.cask/bin/cask install

popd
