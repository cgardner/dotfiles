set background=dark
colorscheme vim-material
hi MatchParen cterm=bold ctermbg=gray ctermfg=black

highlight Comment cterm=italic
" highlight SignColumn ctermbg=16
highlight clear SignColumn
highlight Folded     cterm=bold ctermfg=12 ctermbg=None
highlight VertSplit ctermbg=lightgrey ctermfg=lightgrey

set cursorline
augroup CursorLine
	au!
	au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
	au winLeave * setlocal nocursorline nocursorcolumn
augroup END
highlight Normal guibg=black

hi CursorLine   cterm=bold ctermbg=239 guibg=black guifg=white
" terminal cursor colors
" highlight! link TermCursor Cursor 
highlight! TermCursorNC guibg=red guifg=white ctermbg=1 ctermfg=15

" colorize long lines
highlight OverLength ctermbg=red ctermfg=white guibg=#ee464d
match OverLength /\%81v.*/

hi CursorLine term=underline cterm=underline