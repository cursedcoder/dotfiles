#!/bin/bash

if [[ -z ${SPIN} ]]; then
	echo 'Must be run within a Spin environment' >&2
	exit 1
fi

installFish() {
  sudo apt-add-repository ppa:fish-shell/release-3
  sudo apt-get update
  sudo apt-get install fish
  chsh -s /usr/local/bin/fish
  curl -L https://get.oh-my.fish | fish
}

installFish
