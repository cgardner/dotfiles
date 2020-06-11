let g:lightline = {
  \ "component_function": {
    \ "filetype": "MyFiletype",
    \ "fileformat": "MyFileformat",
  \ },
  \ "colorscheme": "solarized",
  \ "mode_map": {
    \ "n" : "N",
    \ "i" : "I",
    \ "R" : "R",
    \ "v" : "V",
    \ "V" : "VL",
    \ "\<C-v>": "VB",
    \ "c" : "C",
    \ "s" : "S",
    \ "S" : "SL",
    \ "\<C-s>": "SB",
    \ "t": "T",
  \ },
  \ "separator": {
    \ "left": "",
    \ "right": ""
  \   }
\}

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? (WebDevIconsGetFileFormatSymbol()) : ''
endfunction
