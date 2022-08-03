
"*****************************************************************************
"" Basic Setup
"*****************************************************************************"
set title  " Muestra el nombre del archivo en la ventana de la terminal
set tabstop=4 " indica cuántos espacios tiene una tabulación. Por defecto 8, yo suelo bajarlo a 4
set expandtab " convierte las tabulaciones a espacios. El nº de espacios será el definido en :set tabstop
set shiftwidth=4 " indica el nº de espacios para una indentación
"set mouse=a " con esta opción cuando copiemos desde la terminal deslizando el ratón por el texto del fichero no se copiarán los números de línea.
"set paste " nos servirá para hacer copy-paste en vim respetando tabulaciones y espacios del texto original.
"set nowrap
set t_Co=256
"set guifont=Meslo\ LG\ S\ 9
"set guifont=Monaco\ Regular\ 10
set guifont=Monaco\ for\ Powerline:h12
"set guifont=Mononoki\ Regular\ 10
set clipboard=unnamedplus "Habilita el copiar al porta papeles
"set clipboard=unnamed " Habilita el copiar al porta papeles
set ic " Búsquedas no sensibles a mayúsculas.
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set history=1000
set number " Mostrar la númeracióni
set mouse-=a " Permite interactuar con el mouse en el documento
set numberwidth=3 " Ancho de la númeración
syntax enable " Resaltar sintaxis
set showcmd " Mostrar comando que se está ejecutando
set ruler " Mostrar la línea y la columna en la que estamos en la barra inferior
set showmatch " Si estás en un parentecis nos resalta el parenctesis de cierre
set sw=4 " Indentado con 4 espacios
set relativenumber " Habilita la numeración relativa
"set laststatus=2 " Muestra el status
set noshowmode " Muestra el modo en que se está trabajando
set background=dark " solo le informa a vim cual es el color de fondo
colorscheme monokai " Tema de colores

"*****************************************************************************
"	Configuración para el uso de pliegues
"*****************************************************************************
" Para realizar el plegado de forma automática. Por ejemplo, si queremos que 
" la tecla espacio cree un pliegue con el texto seleccionado cuando estamos en 
" modo visual y que además permita abrir y cerrar pliegues cuando estamos en 
" modo normal

vmap <space> zf
nmap <space> za
" Personalizando los colores que los pliegues:
highlight Folded ctermfg=yellow ctermbg=gray guifg=yellow guibg=gray
" Mostrar solo la primera línea del pliegue
set foldtext=getline(v:foldstart)
"    ***** Persistencia de los pliegues ******
" Al contrario que las marcas, cuando salimos de un fichero se pierden los 
" pliegues que hemos creado para él. Para evitar esto, podemos utilizar unos 
" comandos en el fichero .vimrc que automáticamente salvan la sesión de pliegues 
" cuando salimos de Vim, y la cargan al editar de nuevo el mismo fichero.
set foldmethod=manual
set viewoptions=folds
""" Guardar pliegues al salir y cargarlos al editar
"autocmd BufWinLeave ?* mkview
"autocmd BufWinEnter ?* silent loadview 
