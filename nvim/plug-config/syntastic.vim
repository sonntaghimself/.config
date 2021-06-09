"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  syntastic                                  "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:syntastic_enable_r_lintr_checker = 1
let g:syntastic_aggregate_errors = 1
let g:syntastic_enable_signs = 1
let g:syntastic_r_checkers = ['lintr']
let g:syntastic_tex_checkers = ['lacheck']
let g:syntastic_error_symbol = '✘'
let syntastic_style_error_symbol = '?'
let g:syntastic_warning_symbol = '⚠'
let syntastic_style_warning_symbol = '!'
