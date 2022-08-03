

" define la " " el espacio como la tecla lider
let mapleader = " " " Leader  is the space key
"let g:mapl eader = " "

"  jj Volver al modo comando desde el modo inserción al teclear 2 íes seguídas. Es complicado encontrar palabras y expresiones que tengan 2 íes seguidas
imap jj <Esc>

" Guardado rapido como  en doom emacs
noremap <leader>fs :w!<cr>


" Control S está chocando con una funcion de coc
"noremap <C-S> :w!<CR> 

" Salir sin guardar, igual que en Doom
nmap <leader>q :q!<cr>
"
" Cambiar de buffers igual que en Doom
nmap <leader>bn :bnext<CR>
nmap <leader>bp :bprevious<CR>

" Cambar de pestaña
nmap <leader>tn :tabNext<CR>
nmap <leader>tp :tabPrevious<CR>

" copiar hasta el final de la linea
nnoremap Y y$ 

" moverse entre buffers resientemente utilizados
nnoremap <BS> <C-^>`"zz
