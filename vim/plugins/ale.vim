let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

let g:ale_fixers = {}
let g:ale_linters = {}
let g:ale_fix_on_save = 1

" Javascript
let g:ale_linters['javascript'] = ['eslint']
let g:ale_fixers['javascript'] = ['eslint', 'prettier']
let g:ale_javascript_eslint_use_global = 1
let g:ale_javascript_eslint_executable = 'eslint'
let g:ale_javascript_eslint_options = '--config ~/src/dotfiles/.eslintrc.js'

" YAML
let g:ale_linters['yaml'] = ['swaglint']
let g:ale_yaml_swaglint_use_global = 1

" Markdown
let g:ale_linters['markdown'] = ['markdownlint']
let g:ale_fixers['markdown'] = ['prettier']
