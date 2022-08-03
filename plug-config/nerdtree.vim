
" "****************************************************************************
"" Plugin NerdTree
" Uso: precionar ', nt' abre el arbol de directorios
"*****************************************************************************"
" define la combinación de teclas 'nt'
nmap <Leader>nt :NERDTreeFind 
" Lo abre automaticamente al iniciar vim:
"autocmd vimenter * NERDTree
" Para cerrar NERDTree automáticamente si es la única ventana que queda, agregue esto a su .vimrc:
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
