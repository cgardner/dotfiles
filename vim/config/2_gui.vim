set encoding=UTF-8

syntax enable

set backspace=indent,eol,start
set hidden
set tabstop=2
set autoindent
set smartindent
set smarttab
set expandtab
set shiftwidth=2
set pastetoggle=<F9>
set ignorecase
set smartcase
set hlsearch
set incsearch


" Disable backup files {{{
set nobackup
set noswapfile
set wildignore=*.swp,*.bak
" }}}

" History {{{
set history=1000
set undolevels=1000
" }}}

set title
set laststatus=2
set noshowmode

set guifont=FuraCode\ Nerd\ Font

set number " show line numbers
set relativenumber
set scrolloff=999 " Keep cursor centered
set wrap " enable soft wrap
set linebreak
set nolist  " list disables linebreak
set textwidth=0 " prevent newlines when wrapping
set wrapmargin=0 " prevent newlines when wrapping
