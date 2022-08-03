
" *****************************************************************************
"" Plugin ShowMarks, muestras las marcas que se van creando
"*****************************************************************************"
let g:make = 'gmake'
if exists('make')
    let g:make = 'make'
endif

"""" Mostrar las marcas a-z y A-Z en un color concreto:
let g:showmarks_include="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
highlight ShowMarksHLl ctermfg=LightCyan ctermbg=NONE guifg=#40FF40 guibg=Black
highlight ShowMarksHLu ctermfg=LightCyan ctermbg=NONE guifg=#40FF40 guibg=Black
highlight SignColumn ctermfg=Blue ctermbg=NONE guifg=Blue guibg=Black
