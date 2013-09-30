execute pathogen#infect()
call pathogen#helptags()

set nocompatible " This must be first.  it changes other options

let mapleader=","

nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

set backspace=indent,eol,start
set hidden
set tabstop=4
set autoindent
set smartindent
set smarttab
set expandtab
set shiftwidth=4
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
set ofu=syntaxcomplete#Complete

set guifont=Monaco\ for\ Powerline
let g:Powerline_symbols = 'fancy'

set laststatus=2

" Configure colors
syntax enable
let g:solarized_termcolors=16
colorscheme solarized
set background=dark

set cursorline
nnoremap <Leader>c :set cursorline!<CR>
augroup CursorLine
	au!
	au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
	au winLeave * setlocal nocursorline nocursorcolumn
augroup END
hi CursorLine term=underline cterm=underline



set number " show line numbers
set tw=79 " width of document (used by gd)
set nowrap " don't automatically wrap on load
set fo-=t " don't automatically wrap text when typing


filetype on
filetype plugin on
filetype indent on

autocmd FileType php noremap <M-L> :!/usr/local/bin/php -l %<CR>
autocmd FileType php noremap <M-M> :w!<CR>:!/usr/local/bin/php %<CR>

nnoremap ; :
nmap <silent> ,/ :let @/=""<CR>

" NERDTree Settings
let NERDTreeBookmarksFile=expand("$HOME/.vim/NERDTreeBookmarks")
let NERDTreeIgnore=[ '\.git$' ]
let NERDTreeShowBookmarks=1
let NERDTreeShowFiles=1
let NERDTreeShowHidden=0
let NERDChristmasTree=1
let NERDTreeWinSize=40
nmap <Leader>n :NERDTreeToggle<CR>
nmap <Leader>m :NERDTreeClose<CR>:NERDTreeFind<CR>

" Filetype Settings
if has("autocmd")
	" PHP Settings
	autocmd FileType php noremap <C-L> :!/usr/bin/php -l %<CR>

  " Drupal *.module and *.install files.
  augroup module
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
    autocmd BufRead,BufNewFile *.inc set filetype=php
    autocmd BufRead,BufNewFile *.profile set filetype=php
    autocmd BufRead,BufNewFile *.view set filetype=php
  augroup END
endif

nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>
nmap <Leader>a> :Tabularize /=><CR>
vmap <Leader>a> :Tabularize /=><CR>

if has('gui_running')
	set guicursor+=a:blinkon0       " Cursor doesn't blink - it's annoying
	set guioptions-=m               " No Menubar
	set guioptions-=T               " No Toolbar
	set guioptions-=l               " No Scrollbar left
	set guioptions-=L               " No Scrollbar left when split
	set guioptions-=r               " No Scrollbar right
	set guioptions-=r               " No Scrollbar right when split

	set laststatus=2                " always show statusline

	set gfn=Neep\ Medium\ Semi-Condensed\ 9

	set lines=40                    " Height
	set columns=85                  " Width
endif

noremap <silent><Leader>/ :nohls<CR>
noremap <F1> <Esc>
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<cr>

command W :execute ':silent w !sudo tee % > /dev/null' | :edit!

"UltiSnips Configuration
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

set cursorline
nnoremap <Leader>c :set cursorline!<CR>
augroup CursorLine
	au!
	au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
	au winLeave * setlocal nocursorline nocursorcolumn
augroup END
hi CursorLine term=underline cterm=underline

autocmd! bufwritepost .vimrc source %

" Ctrl+P Settings
let g:ctrlp_custom_ignore = '\v[\/](template_c|.git)$'

" Show Git diff in window split when commiting
" http://vimbits.com/bits/173
autocmd FileType gitcommit DiffGitCached | wincmd p

" Easy split navigation
" http://vimbits.com/bits/10
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Select All
" http://vimbits.com/bits/82
map <Leader>a ggVG

" Keep search pattern at the center of the screen.
" vimbits.com/bits/92
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz
nnoremap <silent> g# g#zz

" Reselect visual block after indent/outdent
" http://vimbits.com/bits/20
vnoremap < <gv
vnoremap > >gv

" Vdebug Configuration
let g:vdebug_options = { "ide_key": "craiggardnerdev" }

" Tagbar Configuration
nmap <F8> :TagbarToggle<CR>
