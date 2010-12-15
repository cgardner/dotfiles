set nocompatible " This must be first.  it changes other options

call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

let mapleader=","

nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

set backspace=indent,eol,start
set hidden
set expandtab
set tabstop=4
set autoindent
set smartindent
set smarttab
set term=color_xterm
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

set ofu=syntaxcomplete#Complete

syntax on
filetype on
filetype plugin on
filetype indent on

let g:snips_author='Craig Gardner <craig_gardner@adp.com>'

autocmd FileType php noremap <C-L> :!/usr/local/bin/php -l %<CR>
autocmd FileType php noremap <C-M> :w!<CR>:!/usr/local/bin/php %<CR>
autocmd FileType php noremap <C-U> :w!<CR>:!/opt/adp/httpd/bin/phpunit --group vim %<CR>

nnoremap ; :
nmap <silent> ,/ :let @/=""<CR>

" VimWIKI settings
let g:vimwiki_list = [{'path': '~/public_html/vimwiki/', 'auto_export': 1}]
let g:vimwiki_table_auto_fmt = 0
map <Leader>vh :VimwikiAll2HTML<CR>
inoremap <expr> <buffer> <CR> vimwiki_tbl#kbd_cr()
inoremap <expr> <buffer> <C-Tab> vimwiki_tbl#kbd_tab()
inoremap <expr> <buffer> <S-Tab> vimwiki_tbl#kbd_shift_tab()

let NERDTreeBookmarksFile=expand("$HOME/.vim/NERDTreeBookmarks")
let NERDTreeIgnore=[ '\.git$' ]
let NerdTreeShowBookmarks=1
let NerdTreeShowFiles=1
let NerdTreeShowHidden=1
let NerdTreeQuitOnOpen=1
let NerdTreeHighlightCursorline=1
let NerdTreeMouseMode=2
nmap ,n :NERDTreeClose<CR>:NERDTreeToggle<CR>
nmap ,N :NERDTreeClose<CR>
nmap ,m :NERDTreeClose<CR>:NERDTreeFind<CR>
