set nocompatible " This must be first.  it changes other options

source ~/src/dotfiles/vim/plugins.vim

if has('gui_running')
	source ~/src/dotfiles/vim/gui.vim
endif

set encoding=UTF-8
set conceallevel=0 " Hide the square brackets from dev icons

set backspace=indent,eol,start
set hidden
set tabstop=2
set autoindent
set smartindent
set smarttab
set expandtab
set shiftwidth=2
set pastetoggle=<F9>
set ff=unix
set ignorecase
set smartcase
set hlsearch
set incsearch
set nobackup
set noswapfile
set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak
set title
set laststatus=2


set guifont=FuraCode\ Nerd\ Font

syntax enable
filetype on
filetype plugin indent on
set termguicolors

autocmd FileType yaml setlocal shiftwidth=2 tabstop=2

set number " show line numbers
set wrap " enable soft wrap
set linebreak
set nolist  " list disables linebreak
set textwidth=0 " prevent newlines when wrapping
set wrapmargin=0 " prevent newlines when wrapping

set foldmethod=syntax

autocmd! bufwritepost .vimrc source %
source ~/src/dotfiles/vim/init.vim
source ~/src/dotfiles/vim/keys.vim
source ~/src/dotfiles/vim/plugins/config.vim
source ~/src/dotfiles/vim/colors.vim
