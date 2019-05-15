" NERDTree Settings
let NERDTreeBookmarksFile=expand("$HOME/.vim/NERDTreeBookmarks")
let NERDTreeShowBookmarks=1
let NERDTreeShowFiles=1
let NERDTreeShowHidden=0
let NERDChristmasTree=1
let NERDTreeWinSize=40
let NERDTreeIgnore=['node_modules']

let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''

nmap <Leader>n :NERDTreeToggle<CR>
nmap <Leader>m :NERDTreeClose<CR>:NERDTreeFind<CR>


