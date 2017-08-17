"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/gardnerc/.vim/bundles/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/gardnerc/.vim/bundles')
  call dein#begin('/Users/gardnerc/.vim/bundles')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/gardnerc/.vim/bundles/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('scrooloose/nerdtree', {'on_cmd': 'NERDTreeToggle'})
  call dein#add('leafgarland/typescript-vim')
  call dein#add('Quramy/tsuquyomi')
  call dein#add('Shougo/vimproc', {
    \ 'build' : {
    \     'windows' : 'tools\\update-dll-mingw',
    \     'cygwin' : 'make -f make_cygwin.mak',
    \     'mac' : 'make -f make_mac.mak',
    \     'linux' : 'make',
    \     'unix' : 'gmake',
    \    },
    \ })
  call dein#add('Valloric/YouCompleteMe', {
       \ 'build' : {
       \     'mac' : './install.sh --clang-completer --system-libclang --omnisharp-completer',
       \     'unix' : './install.sh --clang-completer --system-libclang --omnisharp-completer',
       \     'windows' : './install.sh --clang-completer --system-libclang --omnisharp-completer',
       \     'cygwin' : './install.sh --clang-completer --system-libclang --omnisharp-completer'
       \    }
       \ })

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

if !exists("g:ycm_semantic_triggers")
 let g:ycm_semantic_triggers = {}
 endif
 let g:ycm_semantic_triggers['typescript'] = ['.']

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

filetype plugin indent on
syntax enable

" set rtp+=./powerline/powerline/bindings/vim

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
syntax enable

set laststatus=2

" Configure colors
" colorscheme solarized
set background=dark

set guifont=Inconsolata\ for\ Powerline
let g:Powerline_symbols = 'fancy'


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
let NERDTreeShowBookmarks=1
let NERDTreeShowFiles=1
let NERDTreeShowHidden=0
let NERDChristmasTree=1
let NERDTreeWinSize=40
nmap <Leader>n :NERDTreeToggle<CR>
nmap <Leader>m :NERDTreeClose<CR>:NERDTreeFind<CR>

" Filetype Settings
if has("autocmd")
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
map <Leader>t :TagbarToggle<CR>

" Moving Lines http://reefpoints.dockyard.com/2013/09/26/vim-moving-lines-aint-hard.html
" Normal mode
nnoremap <M-j> :m .+1<CR>==
nnoremap <M-k> :m .-2<CR>==

" Insert mode
inoremap <M-j> <ESC>:m .+1<CR>==gi
inoremap <M-k> <ESC>:m .-2<CR>==gi

" Visual mode
vnoremap <M-j> :m '>+1<CR>gv=gv
vnoremap <M-k> :m '<-2<CR>gv=gv

" Syntastic Configuration
let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']
let g:syntastic_php_phpcs_args="--standard=PSR2 --tab-width=4"

" colorize long lines
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%121v.*/

" Keep this at the end to make sure all configurations get set properly
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!
