let g:lightline = {
  \ "component_function": {
    \ "filetype": "MyFiletype",
    \ "fileformat": "MyFileformat",
  \ },
  \ "colorscheme": "solarized"
\}

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? (WebDevIconsGetFileFormatSymbol()) : ''
endfunction
