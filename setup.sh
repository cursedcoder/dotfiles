#!/bin/bash

./install-fish.sh

sudo ln -nfs $DIR/scripts/git-squash /usr/local/bin/git-squash

cp -R $DIR/.config/fish $HOME/.config/fish
cp gitconfig ~/.gitconfig
