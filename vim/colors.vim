colorscheme default
set background=dark
hi MatchParen cterm=bold ctermbg=gray ctermfg=black
hi CursorLine   cterm=bold ctermbg=239 guibg=black guifg=white
" terminal cursor colors
" highlight! link TermCursor Cursor 
highlight! TermCursorNC guibg=red guifg=white ctermbg=1 ctermfg=15

highlight Comment cterm=italic
" highlight SignColumn ctermbg=16
highlight clear SignColumn
highlight Folded     cterm=bold ctermfg=12 ctermbg=None
highlight VertSplit ctermbg=lightgrey ctermfg=lightgrey

" colorize long lines
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%121v.*/

hi CursorLine term=underline cterm=underline
