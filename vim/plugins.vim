
call plug#begin('~/.vim/plugged')

" Fuzzy File Search
Plug 'junegunn/fzf', { 
  \ 'dir': '~/.fzf', 
  \ 'do': './install --all' 
\}
Plug 'junegunn/fzf.vim'

" Language and Syntax
Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale'
" Markdown
Plug 'suan/vim-instant-markdown', { 
	 \ 'for': 'markdown', 
	 \ 'on': 'npm -g install instant-markdown-d' 
\}

" Sequence Diagrams
Plug 'xavierchow/vim-sequence-diagram'

" Autocomplete
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc.nvim', {
  \ 'do': 'yarn install --frozen-lockfile'
\}

" Tools
Plug 'terryma/vim-multiple-cursors'
Plug 'mattn/emmet-vim'

" pimp my vim
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'hzchirs/vim-material'
Plug 'ryanoasis/vim-devicons'

call plug#end()

filetype plugin indent on
syntax enable 
