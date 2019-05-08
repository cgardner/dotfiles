set nocompatible " This must be first.  it changes other options

source ~/src/dotfiles/vim/plugins.vim
source ~/src/dotfiles/vim/init.vim
source ~/src/dotfiles/vim/keys.vim
source ~/src/dotfiles/vim/colors.vim
source ~/src/dotfiles/vim/NERDTree.vim

if has('gui_running')
	source ~/src/dotfiles/vim/gui.vim
endif

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
syntax enable

set laststatus=2

set guifont=Fira\ Code

set cursorline
augroup CursorLine
	au!
	au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
au winLeave * setlocal nocursorline nocursorcolumn
augroup END

set number " show line numbers
set tw=79 " width of document (used by gd)
set nowrap " don't automatically wrap on load
set fo-=t " don't automatically wrap text when typing

filetype on
filetype plugin on
filetype indent on

autocmd FileType php noremap <M-L> :!/usr/local/bin/php -l %<CR>
autocmd FileType php noremap <M-M> :w!<CR>:!/usr/local/bin/php %<CR>
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2

set cursorline
augroup CursorLine
	au!
	au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
	au winLeave * setlocal nocursorline nocursorcolumn
augroup END
hi CursorLine term=underline cterm=underline

autocmd! bufwritepost .vimrc source %
