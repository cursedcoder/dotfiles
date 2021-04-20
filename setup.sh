#!/bin/bash

if [[ -z ${SPIN} ]]; then
	echo 'Must be run within a Spin environment' >&2
	exit 1
fi

./installRubyMineViaProjector.sh
./installFish.sh

ln -nfs $PWD/scripts/git-squash /usr/local/bin/git-squash
cp gitconfig ~/.gitconfig
