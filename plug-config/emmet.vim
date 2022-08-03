
" *****************************************************************************
"" Plugin Emmet
"*****************************************************************************"
""Podemos tener emmet instalado solo para HTML y CSS:
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
" método abreviado de teclado que desee. Siguiendo este ejemplo, 
" he asignado la clave de líder de emmet a ','
"let g:user_emmet_leader_key=','
let g:user_emmet_expandabbr_key = '<c-e>'
"let g:use_emmet_complete_tag = 1
