#!/bin/bash

brew install rust
cargo install --git https://github.com/ubnt-intrepid/dot.git
dot init cgardner/dotfiles

xargs brew install < $HOME/.dotfiles/brew
xargs brew cask install < $HOME/.dotfiles/brew-cask

# Install TaskHelper
go get github.com/cgardner/taskhelper

cd ~/.dotfiles
git submodule init
git submodule update
