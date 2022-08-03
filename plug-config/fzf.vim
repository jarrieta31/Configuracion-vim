" [Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter,ctrl-x'

" Guardar historial de búsquedas
let g:fzf_history_dir = '~/.local/share/fzf-history'

" Abre el buscador de archivos presionando Ctrl + p
nnoremap <C-p> :Files<CR>

" Buscar entre los buffers abiertos presionando Ctrl + o
nnoremap <C-o> :Buffers<CR>

" Busca los archivos que contengan una palabra utilizando ripgrep 
nnoremap <C-f> :Rg!
