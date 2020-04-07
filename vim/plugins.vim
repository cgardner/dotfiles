call plug#begin('~/.vim/plugged')

" Colors {{{
Plug 'altercation/vim-colors-solarized'
" }}}

" Fuzzy File Search {{{
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }
" }}}

" Language and Syntax {{{
Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale'
" }}}

" Autocomplete / Snippets {{{
Plug 'neoclide/coc.nvim', {
      \ 'branch': 'release',
      \ 'do': 'yarn install --frozen-lockfile'
\}
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
" }}}

" pimp my vim {{{
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'vifm/vifm.vim' " File Browser
Plug 'itchyny/lightline.vim'
" }}}

" Utilities {{{
Plug 'godlygeek/tabular'
" }}}

" VimWiki {{{
Plug 'vimwiki/vimwiki'
Plug 'tbabej/taskwiki'
Plug 'iamcco/markdown-preview.nvim', { 
      \ 'do': 'cd app & yarn install'
      \}
Plug 'masukomi/vim-markdown-folding'
" }}}

call plug#end()
