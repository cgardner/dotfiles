let g:vimwiki_list = [{'path': '/Volumes/Keybase/private/cgardner/vimwiki',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

command! -nargs=1 Ngrep execute 'vimgrep "<args>"' . g:vimwiki_list[0].path  .'/**/*.md'
nnoremap <leader>[ :Ngrep 
