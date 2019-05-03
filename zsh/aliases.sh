alias g="git"
alias zref="source $HOME/.zshrc"

## NODE
alias nr="npm run"
alias ni="npm i"

## UPGRAYEDD
alias upgrayedd='HOMEBREW_INSTALL_CLEANUP=true brew upgrade && \
    brew cask upgrade && \
    brew cleanup && \
    mas upgrade && \
    nvim -c "call dein#update()" -c "q!"'

## Tmuxinator
alias mux="tmuxinator"
alias muxs="tmuxinator start"
alias p="tmuxinator start project"

alias pl="ls $HOME/src"
