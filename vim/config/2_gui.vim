set encoding=UTF-8

set conceallevel=0
set concealcursor=nc

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

set number " show line numbers
set relativenumber
set scrolloff=999 " Keep cursor centered
set wrap " enable soft wrap
set linebreak
set nolist  " list disables linebreak
set textwidth=0 " prevent newlines when wrapping
set wrapmargin=0 " prevent newlines when wrapping

set foldmethod=syntax

if has('gui_running')
  set guicursor+=a:blinkon0       " Cursor doesn't blink - it's annoying
  set guioptions-=m               " No Menubar
  set guioptions-=T               " No Toolbar
  set guioptions-=l               " No Scrollbar left
  set guioptions-=L               " No Scrollbar left when split
  set guioptions-=r               " No Scrollbar right
  set guioptions-=r               " No Scrollbar right when split

  set laststatus=2                " always show statusline

  set lines=40                    " Height
  set columns=85                  " Width
endif
