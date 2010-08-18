syntax on
set expandtab
set tabstop=4
set autoindent
set smartindent
filetype plugin on
set term=color_xterm
set nowrap
set number

autocmd FileType php noremap <C-L> :!/usr/local/bin/php -l %<CR>
autocmd FileType php noremap <C-M> :w!<CR>:!/usr/local/bin/php %<CR>
