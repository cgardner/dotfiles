set nocompatible " This must be first.  it changes other options

source ~/.dotfiles/vim/plugins.vim

for f in split(glob('~/.dotfiles/vim/config/*.vim'), '\n')
  exe 'source' f
endfor

