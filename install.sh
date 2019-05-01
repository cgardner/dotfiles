#!/bin/bash

### VIM SETUP
# Install Dein for vim
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
# For example, we just use `~/.cache/dein` as installation directory
sh ./installer.sh ~/.cache/dein && rm ./installer.sh

printf "so $HOME/src/dotfiles/vim/vimrc.vim" > ~/.vimrc

### END VIM SETUP

### TMUX SETUP

printf "source-file $HOME/src/dotfiles/tmux/tmux.conf" > ~/.tmux.conf
### END TMUX SETUP