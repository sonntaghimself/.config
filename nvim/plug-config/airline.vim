"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""                                 airline                                    "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1
let g:airline#extensions#ale#enabled = 1
let airline#extensions#ale#error_symbol = '✘'
let airline#extensions#ale#warning_symbol = '⚠'
let airline#extensions#ale#show_line_numbers = 1
let g:airline_section_z = ' %{strftime("%-I:%M %p")}'
if $PROFILENAME == "dark"
    let g:airline_theme='solarized'
elseif $PROFILENAME == "light"
    let g:airline_theme='solarized_flood'
endif
