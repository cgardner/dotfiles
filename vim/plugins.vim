
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
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

" Tools
Plug 'terryma/vim-multiple-cursors'
Plug 'mattn/emmet-vim'
Plug 'yegappan/mru'

" pimp my vim
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'hzchirs/vim-material'
Plug 'lifepillar/vim-solarized8'
Plug 'ryanoasis/vim-devicons'

Plug 'godlygeek/tabular'

Plug 'pedrohdz/vim-yaml-folds'

Plug 'junegunn/goyo.vim'

Plug 'vimwiki/vimwiki'

call plug#end()
