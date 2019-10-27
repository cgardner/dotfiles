#!/bin/bash

### VIM SETUP
# Install Dein for vim
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
# For example, we just use `~/.cache/dein` as installation directory
sh ./installer.sh $HOME/.cache/dein && rm ./installer.sh

printf "so $HOME/src/dotfiles/vim/vimrc.vim" > $HOME/.vimrc
mkdir -p $HOME/.config/nvim/
printf "so $HOME/src/dotfiles/vim/vimrc.vim" > $HOME/.config/nvim/init.vim

### END VIM SETUP

### TMUX SETUP
printf "source-file $HOME/src/dotfiles/tmux/tmux.conf" > $HOME/.tmux.conf
if ! tmuxinator_loc="$(type -p "tmuxinator")" || [[ -z $tmuxinator_loc ]]; then
    mkdir -p $HOME/.config/tmuxinator
    cp ./tmux/templates/* $HOME/.config/tmuxinator
fi
### END TMUX SETUP

### ZSH SETUP
printf "source $HOME/src/dotfiles/zsh/zshrc-manager.sh" > $HOME/.zshrc
### END ZSH SETUP

### TASKWARRIOR SETUP
ln -s $HOME/src/dotfiles/task/taskrc $HOME/.taskrc
### END TASKWARRIOR SETUP
