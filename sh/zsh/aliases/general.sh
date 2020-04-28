alias g="git"
alias zref="source $HOME/.zshrc"

## UPGRAYEDD
alias upgrayedd='brew upgrade && \
  brew cask upgrade && \
  brew cleanup && \
  nvim -c "PlugUpdate" -c "PlugUpgrade" -c "PlugClean" -c "qa!" && \
  npm-check -y -g' 

## Tmuxinator
alias mux="tmuxinator"
alias muxs="tmuxinator start"
alias p="tmuxinator start project"
alias dp="tmuxinator start project "

alias tf="terraform"

alias pl="ls $HOME/src"

md() {
  mkdir -p $1
  cd $1
}

c() {
  cd $1
  ls
}
alias cd="c"

mdown() {
  pandoc "$1" | w3m -T text/html
}

realpath() {
    [[ $1 = /* ]] && echo "$1" || echo "$PWD/${1#./}"
}

