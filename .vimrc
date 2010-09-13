set nocompatible " This must be first.  it changes other options

call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

let mapleader=","

set backspace=indent,eol,start
set hidden
set expandtab
set tabstop=4
set autoindent
set smartindent
set smarttab
set term=color_xterm
set nowrap
set number
set shiftwidth=4
set pastetoggle=<F8>
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

syntax on
filetype on
filetype plugin on
filetype indent on
let g:snips_author='Craig Gardner <craig_gardner@adp.com>'

autocmd FileType php noremap <C-L> :!/usr/local/bin/php -l %<CR>
autocmd FileType php noremap <C-M> :w!<CR>:!/usr/local/bin/php %<CR>
autocmd FileType php noremap <C-U> :w!<CR>:!/usr/local/bin/phpunit %<CR>

nnoremap ; :
nmap <silent> ,/ :let @/=""<CR>
