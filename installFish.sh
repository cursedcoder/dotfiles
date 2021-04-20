#!/bin/bash

installFish() {
  sudo apt-add-repository ppa:fish-shell/release-3
  sudo apt-get update
  sudo apt-get install fish -qq
  sudo chsh -s $(which fish) $(whoami)
  curl -L https://get.oh-my.fish | fish
}

installFish
