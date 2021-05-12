"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""                                 Ale                                        "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_linters = {'python': ['flake8', 'mypy']}
let g:ale_fixers = {'*': [], 'python': ['black']}
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_enter = 1
let g:ale_lint_on_text_changed = 'never' "'normal' 
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1
let g:syntastic_tex_checkers = ['lacheck']
