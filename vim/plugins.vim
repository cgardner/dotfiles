"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
let g:dein#types#git#default_protocol='ssh'

" Required:
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  " git
  call dein#add('airblade/vim-gitgutter')

  " fuzzy file search
  call dein#add('junegunn/fzf.vim')
  call dein#add('junegunn/fzf', { 'build': './install --all' })

  call dein#add('tpope/vim-surround')

  call dein#add('tpope/vim-sleuth')
  call dein#add('tpope/vim-commentary')

  " Snippets
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  " Filetype plugins
  call dein#add('sheerun/vim-polyglot')
  call dein#add('w0rp/ale')

  " Add or remove your plugins here:
  call dein#add('scrooloose/nerdtree', {'on_cmd': 'NERDTreeToggle'})
  call dein#add('Shougo/vimproc', { 'build' : 'make' })

  " Markdown
  call dein#add('suan/vim-instant-markdown', { 
				\ 'on_ft': 'markdown', 
				\ 'build': 'npm -g install instant-markdown-d' 
	\})

  " Autocomplete
  call dein#add('neoclide/coc.nvim', {'merge':0, 'build': './install.sh nightly'})

  if !has('nvim')
	  call dein#add('roxma/nvim-yarp')
	  call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  " Deol Terminal plugin
  call dein#add('Shougo/deol.nvim')

  " pimp my vim
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('hzchirs/vim-material')
  call dein#add('ryanoasis/vim-devicons')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable 
" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

