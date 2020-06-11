call plug#begin('~/.vim/plugged')

" Colors {{{
Plug 'altercation/vim-colors-solarized'
" }}}

" Fuzzy File Search {{{
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }
" }}}

" Language and Syntax {{{
" Plug 'sheerun/vim-polyglot'
" Plug 'w0rp/ale'
" }}}

" " Autocomplete / Snippets {{{
Plug 'neoclide/coc.nvim', {
      \ 'do': 'yarn install --frozen-lockfile'
\}
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" }}}

" pimp my vim {{{
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'
" }}}

" File Browser {{{
Plug 'preservim/nerdtree'
" }}}

" Utilities {{{
" Plug 'godlygeek/tabular'
" }}}

" Markdown {{{
" Plug 'iamcco/markdown-preview.nvim', { 
"       \ 'do': 'cd app & yarn install'
"       \}
" Plug 'masukomi/vim-markdown-folding'
" }}}

" Ledger {{{
" Plug('ledger/vim-ledger')
" }}}

call plug#end()
