
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
" Markdown / Diagramming
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

" Autocomplete
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc.nvim', {
  \ 'do': 'yarn install --frozen-lockfile'
\}
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
" Plug 'Shougo/neosnippet.vim'
" Plug 'Shougo/neosnippet-snippets'

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
Plug 'altercation/vim-colors-solarized'
Plug 'ryanoasis/vim-devicons'

Plug 'godlygeek/tabular'

Plug 'pedrohdz/vim-yaml-folds'

Plug 'junegunn/goyo.vim'

Plug 'vimwiki/vimwiki'

call plug#end()
