
" Julio Arrieta

"*****************************************************************************
"" Vim-Plug core
"*****************************************************************************
let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')
if has('win32')&&!has('win64')
let curl_exists=expand('C:\Windows\Sysnative\curl.exe')
else
let curl_exists=expand('curl')
endif

if !filereadable(vimplug_exists)
if !executable(curl_exists)
echoerr "You have to install curl or first install vim-plug yourself!"
execute "q!"
endif
echo "Installing Vim-Plug..."
echo ""
silent exec "!"curl_exists" -fLo " . shellescape(vimplug_exists) . " --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
let g:not_finish_vimplug = "yes"

autocmd VimEnter * PlugInstall
endif

" Required:
call plug#begin(expand('~/.config/nvim/plugged'))

"*****************************************************************************
"" Plug install packages
"*****************************************************************************
if isdirectory('/usr/local/opt/fzf')
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
else
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
endif

" ******* Pluging de autocomletado Conquer of Completions ****************
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"**************************************************************************

"*****************************************************************************
"" Mis Plugins Instalados con Vim-Plug
"*****************************************************************************
"Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'sheerun/vim-polyglot' "Resaltado de sintaxis
Plug 'sainnhe/sonokai' " Tema de Nuevo
Plug 'crusoexia/vim-monokai' " Tema monokai, bueno para trabajar con html
Plug 'phanviet/vim-monokai-pro' " Tema monokai-pro
Plug 'morhetz/gruvbox' " Tema llamado gruvbox, muy bueno
Plug 'kaicataldo/material.vim', { 'branch': 'main' } " Tema Maerial https://github.com/kaicataldo/material.vim
Plug 'sonph/onehalf' " Tema llamado onehalf 
Plug 'easymotion/vim-easymotion' " Acelera el movimiento dentro del fichero
Plug 'scrooloose/nerdtree' " Explorar y abrir directorios 
Plug 'christoomey/vim-tmux-navigator' " Sirve para moverse entre ventanas 
Plug 'jiangmiao/auto-pairs' " agrega las llaves de cierre
Plug 'vim-scripts/ShowMarks' " Muestra las marcas que vamos creando
"Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'jmcantrell/vim-virtualenv'
"Plug 'lambdalisue/vim-pyenv'
Plug 'terryma/vim-multiple-cursors'

let g:make = 'gmake'
if exists('make')
    let g:make = 'make'
endif

"" Vim-Session
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'

"" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"*****************************************************************************
"" Custom bundles
"*****************************************************************************

" html
"" HTML Bundle
Plug 'hail2u/vim-css3-syntax'
Plug 'gorodinskiy/vim-coloresque'
Plug 'tpope/vim-haml'
Plug 'mattn/emmet-vim'

" javascript
Plug 'jelera/vim-javascript-syntax'


" python
"Plug 'davidhalter/jedi-vim'
Plug 'raimon49/requirements.txt.vim', {'for': 'requirements'}

" lua
"" Lua Bundle
Plug 'xolox/vim-lua-ftplugin'
Plug 'xolox/vim-lua-inspect'


" php
"" PHP Bundle
Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install --no-dev -o'}
Plug 'stephpy/vim-php-cs-fixer'

" go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"" Include user's extra bundle
if filereadable(expand("~/.config/nvim/local_bundles.vim"))
source ~/.config/nvim/local_bundles.vim
endif

call plug#end()


"*****************************************************************************
"" Basic Setup
"*****************************************************************************"
set title  " Muestra el nombre del archivo en la ventana de la terminal
set tabstop=4 " indica cuántos espacios tiene una tabulación. Por defecto 8, yo suelo bajarlo a 4
set expandtab " convierte las tabulaciones a espacios. El nº de espacios será el definido en :set tabstop
set shiftwidth=4 " indica el nº de espacios para una indentación
"set mouse=a " con esta opción cuando copiemos desde la terminal deslizando el ratón por el texto del fichero no se copiarán los números de línea.
"set paste " nos servirá para hacer copy-paste en vim respetando tabulaciones y espacios del texto original.
set nowrap
set t_Co=256
"set guifont=Meslo\ LG\ S\ 9
set guifont=Monaco\ Regular\ 10
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
set laststatus=1 " Muestra el status
set showmode " Muestra el modo en que se está trabajando

" jj Volver al modo comando desde el modo inserción al teclear 2 íes seguídas. Es complicado encontrar palabras y expresiones que tengan 2 íes seguidas
imap jj <Esc>
"========================= Activa true colors en la terminal =================================
if (has('termguicolors'))
  set termguicolors
endif
"=============================================================================================

let g:session_autosave = 'no' " Cancela el auto guardado de sesion
set background=dark " solo le informa a vim cual es el color de fondo
colorscheme gruvbox " Tema de colores
let g:gruvbox_constrast_dark = "hard" " Aplica un contraste alto al tema gruvbox
let g:gruvbox_invert_selection = 1 " Inverte el texto seleccionado

" ******* Función para que el documentos se abra donde estabá editando *******
autocmd BufReadPost *
   \ if line("'\"") > 0 && line("'\"") <= line("$") |
   \   exe "normal g`\"" |
   \ endif 
"*****************************************************************************

""============================= =Cambiar el color del cursor (y la forma) en VIM ========================================
let &t_SR = "\033]12;199\x7\e[3 q"
let &t_SI = "\033]12;199\x7\e[5 q"
let &t_EI = "\033]12;deepskyblue\x7\e[1 q"
" Resalta la línea cuando está en modo Insert
:autocmd InsertEnter * set cul
" Quita el resaltado de la línea cuando está en modo Normal
:autocmd InsertLeave * set nocul

""*****************************************************************************


"*****************************************************************************
"" Plugin Easy Motion
" Uso: precionar ', s 2letras' para bubcar la palabra
"*****************************************************************************"
" define la "," como la tecla lider
let mapleader = " " " Leader is the space key
let g:mapleader = " "
" easier write
nmap <leader>fs :w!<cr>
nmap <C-S> :w!<CR>
" Salir sin guardar
nmap <leader>q :q!<cr>
" Mapea la unción s2 del Plugin EasyMotion a la tecla 'leader ss' 
" solo para el modo
nmap <Leader><Leader>s  <Plug>(easymotion-s2)


"****************************************************************************
"" Plugin NerdTree
" Uso: precionar ', nt' abre el arbol de directorios
"*****************************************************************************"
" define la combinación de teclas 'nt'
nmap <Leader>nt :NERDTreeFind 
" Lo abre automaticamente al iniciar vim:
"autocmd vimenter * NERDTree
" Para cerrar NERDTree automáticamente si es la única ventana que queda, agregue esto a su .vimrc:
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Cambiar de buffers
nmap <leader>bn :bnext<CR>
nmap <leader>bp :bprevious<CR>

" *****************************************************************************
"" Plugin ShowMarks, muestras las marcas que se van creando
"*****************************************************************************"
""" Mostrar las marcas a-z y A-Z en un color concreto:
let g:showmarks_include="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
highlight ShowMarksHLl ctermfg=LightCyan ctermbg=NONE guifg=#40FF40 guibg=Black
highlight ShowMarksHLu ctermfg=LightCyan ctermbg=NONE guifg=#40FF40 guibg=Black
highlight SignColumn ctermfg=Blue ctermbg=NONE guifg=Blue guibg=Black

"*****************************************************************************
"	Configuración para el uso de pliegues
"*****************************************************************************
"para realizar el plegado de forma automática. Por ejemplo, si queremos que 
" la tecla espacio cree un pliegue con el texto seleccionado cuando estamos en 
"modo visual y que además permita abrir y cerrar pliegues cuando estamos en 
"modo normal
vmap <space> zf
nmap <space> za
" Personalizando los colores que los pliegues:
"highlight Folded ctermfg=yellow ctermbg=gray guifg=yellow guibg=gray
" Mostrar solo la primera línea del pliegue
set foldtext=getline(v:foldstart)
"    ***** Persistencia de los pliegues ******
" Al contrario que las marcas, cuando salimos de un fichero se pierden los 
" pliegues que hemos creado para él. Para evitar esto, podemos utilizar unos 
" comandos en el fichero .vimrc que automáticamente salvan la sesión de pliegues 
" cuando salimos de Vim, y la cargan al editar de nuevo el mismo fichero.
set foldmethod=manual
set viewoptions=folds
""" Save folds on exit and load them on edit
autocmd BufWinLeave ?* mkview
autocmd BufWinEnter ?* silent loadview 
"=============================================================================


"========== Airline"========================================================
let g:airline_powerline_fonts = 1
"let g:airline_symbols
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_higlight = 1

"*******************************************************************************
"        Configuración predefinida de Conquer of Completion
"*******************************************************************************
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" NeoVim-only mapping for visual mode scroll
" Useful on signatureHelp after jump placeholder of snippet expansion
if has('nvim')
  vnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#nvim_scroll(1, 1) : "\<C-f>"
  vnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#nvim_scroll(0, 1) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

let g:pymode_virtualenv_path = $VIRTUAL_ENV
