
" " ALE Config {{{
" let g:ale_sign_error = '❌'
" let g:ale_sign_warning = '⚠️'
" let g:ale_fix_on_save = 1
" let g:ale_enabled = 0
" " }}}

" " Language Setup {{{
" let g:ale_fixers = {}
" let g:ale_linters = {}
" " }}}

" " Javascript {{{
" let g:ale_linters['javascript'] = ['eslint']
" let g:ale_fixers['javascript'] = ['eslint', 'prettier']
" let g:ale_fixers['javascriptreact'] = ['prettier']
" let g:ale_javascript_eslint_use_global = 1
" let g:ale_javascript_eslint_executable = 'eslint'
" let g:ale_javascript_eslint_options = '--config ~/.dotfiles/.eslintrc.js'
" " }}}

" " Typescript {{{
" let g:ale_linters['typescript'] = ['eslint']
" let g:ale_fixers['typescript'] = ['eslint', 'prettier']
" let g:ale_typescript_eslint_use_global = 1
" let g:ale_typescript_eslint_executable = 'eslint'
" let g:ale_typescript_eslint_options = '--config ~/.dotfiles/.eslintrc.js'
" " }}}
" " JSON {{{
" let g:ale_fixers['json'] = ['prettier']
" " }}}
 
" " YAML {{{
" let g:ale_linters['yaml'] = ['swaglint']
" let g:ale_yaml_swaglint_use_global = 1
" " }}}

" " Markdown {{{
" " let g:ale_linters['markdown'] = ['markdownlint']
" " let g:ale_fixers['markdown'] = ['markdownlint']
" " }}}

" " Terraform {{{
" let g:ale_fixers['tf'] = ['terraform']
" " }}}

" " Go {{{
" let g:ale_fixers['go'] = ['gofmt']
" " }}}

" " Rust {{{
" let g:ale_fixers['rust'] = ['rustfmt']
" " }}}

