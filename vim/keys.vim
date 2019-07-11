let mapleader=","

" Manage vimrc
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

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

" Toggle the cursorline highlighting
nnoremap <Leader>c :set cursorline!<CR>

" Stop highlighting search terms
noremap <silent><Leader>/ :nohls<CR>

" For when my fingers don't work
noremap <F1> <Esc>

" So I don't have to press shift to run a command
nnoremap ; :

" code folding
nmap <silent> + za
