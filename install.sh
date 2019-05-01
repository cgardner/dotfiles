#!/bin/bash

### VIM SETUP
# Install Dein for vim
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
# For example, we just use `~/.cache/dein` as installation directory
sh ./installer.sh $HOME/.cache/dein && rm ./installer.sh

printf "so $HOME/src/dotfiles/vim/vimrc.vim" > $HOME/.vimrc

### END VIM SETUP

### TMUX SETUP
printf "source-file $HOME/src/dotfiles/tmux/tmux.conf" > $HOME/.tmux.conf
### END TMUX SETUP

### ZSH SETUP
printf "source $HOME/src/dotfiles/zsh/zshrc-manager.sh" > $HOME/.zshrc
### END ZSH SETUP
