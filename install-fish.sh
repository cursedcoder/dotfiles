#!/bin/bash

installFish() {
  sudo apt-add-repository ppa:fish-shell/release-3 -y
  sudo apt-get update -y
  sudo apt-get install fish -qq -y
  sudo chsh -s $(which fish) $(whoami)
  curl -L https://get.oh-my.fish | fish
}

installFish
