"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
let g:dein#types#git#default_protocol='ssh'

" Required:
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  " fuzzy file search
  call dein#add('ctrlpvim/ctrlp.vim')

  call dein#add('tpope/vim-surround')
  call dein#add('tpope/vim-sleuth')
  call dein#add('tpope/vim-commentary')

  " Filetype plugins
  call dein#add('fatih/vim-go', {'on_ft': 'go'})
  call dein#add('hashivim/vim-terraform', {'on_ft': 'tf'}) 
  call dein#add('w0rp/ale')

  " Add or remove your plugins here:
  call dein#add('scrooloose/nerdtree', {'on_cmd': 'NERDTreeToggle'})
  call dein#add('Shougo/vimproc', { 'build' : 'make' })


  " Autocomplete

  if !has('nvim')
	  call dein#add('roxma/nvim-yarp')
	  call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  " Deol Terminal plugin
  call dein#add('Shougo/deol.nvim')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable 
" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

