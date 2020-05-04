
# upgrayedd {{{
alias upgrayedd='brew upgrade && \
  brew cask upgrade && \
  brew cleanup && \
  nvim -c "PlugUpdate" -c "PlugUpgrade" -c "PlugClean" -c "qa!" && \
  npm-check -y -g' 
# }}}

# tmux {{{
alias mux="tmuxinator"
alias ,mux="mux"
alias muxs="tmuxinator start"
alias ,muxs="muxs"
alias p="tmuxinator start project"
alias ,p="p"
alias goproj="tmuxinator start go-project"
alias ,gp="goproj"

alias tmk="tmux kill-session -t "
alias ,tmx="tmk"

# }}}

# git {{{
alias g="git"
alias ,g="git"
clone() {
  REPO_URL=$1
  pushd $HOME/src
  git clone $REPO_URL
  popd
}
# }}}

# Shortcuts {{{
md() {
  mkdir -p $1
  cd $1
}

c() {
  cd $1
  ls
}
alias cd="c"
# }}}

# Helpers {{{

alias zref="source $HOME/.zshrc"
alias ,zr="zref"
mdown() {
  pandoc "$1" | w3m -T text/html
}

realpath() {
    [[ $1 = /* ]] && echo "$1" || echo "$PWD/${1#./}"
}

# }}}
