set nocompatible " This must be first.  it changes other options

call pathogen#runtime_append_all_bundles()

let mapleader=","

nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

set backspace=indent,eol,start
set hidden
set tabstop=2
set autoindent
set smartindent
set smarttab
set number
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
set ofu=syntaxcomplete#Complete

color slate
set t_Co=256
set laststatus=2

filetype on
filetype plugin on
filetype indent on

autocmd FileType php noremap <C-L> :!/usr/local/bin/php -l %<CR>
autocmd FileType php noremap <C-M> :w!<CR>:!/usr/local/bin/php %<CR>
autocmd FileType php noremap <C-U> :w!<CR>:!/opt/adp/httpd/bin/phpunit --group vim %<CR>

nnoremap ; :
nmap <silent> ,/ :let @/=""<CR>

" SnipMate Settings
let g:snips_author='Craig Gardner <craig.s.gardner@gmail.com>'
map <Leader>rr :call ReloadAllSnippets()<CR>

" VimWIKI settings
let g:vimwiki_list = [{'path': '~/public_html/vimwiki/', 'auto_export': 1}]
let g:vimwiki_table_auto_fmt = 0
map <Leader>vh :VimwikiAll2HTML<CR>
inoremap <expr> <buffer> <CR> vimwiki_tbl#kbd_cr()
inoremap <expr> <buffer> <C-Tab> vimwiki_tbl#kbd_tab()
inoremap <expr> <buffer> <S-Tab> vimwiki_tbl#kbd_shift_tab()

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
endif
syntax on

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

	colorscheme nucolors
else
	colorscheme slate
endif

noremap <silent><Leader>/ :nohls<CR>
noremap <F1> <Esc>
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<cr>
