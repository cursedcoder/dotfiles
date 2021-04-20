#!/bin/bash

./installRubyMineViaProjector.sh
./installFish.sh

ln -nfs $PWD/scripts/git-squash /usr/local/bin/git-squash
cp gitconfig ~/.gitconfig
