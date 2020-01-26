let g:vimwiki_list = [{'path': '~/.vimwiki',
                      \ 'syntax': 'markdown', 'ext': '.md', 'maxhi': 0}]

command! -nargs=1 Ngrep execute 'vimgrep "<args>"' . g:vimwiki_list[0].path  .'/**/*.md'
nnoremap <leader>[ :Ngrep 
