" la tecla líder es <space>
let mapleader = " "

" desabilito el uso de las feclas del teclado
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" salir del modo INSERT con <Esc> o <jk>
imap jk <Esc>

" desplazamiento vertical rápido con (hacia abajo -> ctrl+e) (hacia arriba -> ctrl+y)
nnoremap <C-k> 10 <C-e>
nnoremap <C-j> 10 <C-y>

" coloca un punto y coma al final de línea situada <space+,>
nnoremap <Leader>, $a;<Esc>

" ejecuta archivos .js & .ts con Nodejs
nnoremap <Leader>dd :!node %<CR>
" compila y ejecuta archivos .java
nnoremap <Leader>dj :!java %<CR>
" compila y ejecuta archivos .py
nnoremap <Leader>dp :!python %<CR>

" con space+t abre la terminal cmd
vnoremap <Leader>t :call OpenTerminal()<CR>
nnoremap <Leader>t :call OpenTerminal()<CR>
inoremap <Leader>t :call OpenTerminal()<CR>

" para guardar archivos
nnoremap <Leader>w :w<CR>
" para cerrar cualquier ventana
nnoremap <Leader>q :q!<CR>
" para salir rápidamente de nvim
nnoremap <Leader>x :qa!<CR>

" abrir el árbol, side bar o NERDTreeToggle
map <Leader>e :NERDTreeToggle<CR>
map <Leader>p :Explore<CR>

" usa Telescope para la busqueda de archivos y demás
nnoremap <Leader>f <cmd>Telescope find_files<CR>
nnoremap <Leader>fl <cmd>Telescope live_grep<CR>
nnoremap <Leader>fb <cmd>Telescope buffers<CR>
nnoremap <Leader>fh <cmd>Telescope help_tags<CR>
nnoremap <Leader>fg <cmd>Telescope git_status<CR>
nnoremap <Leader>fc <cmd>Telescope command_history<CR>

" navegación rápida entre buffers abiertos
nnoremap <silent><C-h> :TmuxNavigateLeft<CR>
nnoremap <silent><C-j> :TmuxNavigateDown<CR>
nnoremap <silent><C-k> :TmuxNavigateUp<CR>
nnoremap <silent><C-l> :TmuxNavigateRight<CR>

" dividir pantalla en dos [vertical] con space+i
nnoremap <Leader>i :vsp<CR>
" dividir pantalla en dos [horizontal] con space+o
nnoremap <Leader>o :sp<CR>

" elimina todos los espacios vacíos que hayan en el archivo con <F3>
nnoremap <F3> :g/^\s\+$/s/\s\+//<CR>
" crea un nuevo archivo en la ruta posicionada <Ctrl+n>
nnoremap <C-n> :tabnew 
" actualiza la configuración de neovim o reinicialo con <Ctrl+r>
nmap <C-r> :source ~/.config/nvim/init.vim<CR>
" abre el archivo de configuración global con <space+init>
nnoremap <Leader>init :e $MYVIMRC<CR>

" navegación entre tabs o pestañas abiertas
nnoremap <silent><TAB> :bnext<CR>
nnoremap <silent><S-TAB> :bprevious<CR>
" eliminar tab o pestaña con <space+dl>
nmap <Leader>dl :bdelete<CR>

" atajo de búsqueda easymotion con <space+s>
nmap <Leader>s <Plug>(easymotion-s2)

" indentar líneas o bloques de códigos en modo VISUAL con los símbolos: < >
vnoremap < <gv
vnoremap > >gv

" seleccionar palabras iguales del archivo con <Ctrl+n>
" con <shift+v> seleccionas toda la línea

" para agrupar una cadena de texto con cualquier simbolo ya sea: () [] {} '' "" debes
" selecionar la palabra hasta un carácter antes y presionar: <s+el-simbolo-que-quieras>

" asignar marco a las minúsculas para que no agregue un espacio vacío
xmap s <Plug>VSurround

" mover bloques de código seleccionado en modo VISUAL, V-LINE o V-BLOCK con <K>
" subes las líneas y con <J> las bajas.
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" subir la posición de una línea en modo NORMAL
nnoremap n :m .-2<CR>==
" bajar de posición de la línea en modo NORMAL
nnoremap m :m .+1<CR>==

" Para camiar el caráctere que tenga una cadena de texto o cambiar el carácter que
" los contiene, por ejemplo: si tienes un 'Hello Python' al presionar <cs+el-simbolo-a-usar>
" la cadena de carácteres magicamente se cambiará sin necesidad de entrar en el modo INSERTAR.

" obtener o copiar la ruta general del archivo posicionado
nnoremap <Leader>kp :let @*=expand("%")<CR>

"*----------------------- ATAJOS PARA OTRAS FUNCIONALIDADES DE COC -----------------------*

" flujo instantaneo con COC
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" use <TAB> para saltar al siguiente marcador de posición
let g:coc_snippet_next = '<TAB>'
" use <SHIFT-TAB> para saltar al marcador de posición anterior
let g:coc_snippet_prev = '<S-TAB>'

" puedes gatillar el autocompletado COC cuándo esté situado en algun archivo .js o .java
" presione <Ctrl+space> para ver las sugerencias.
if &filetype == 'javascript' || &filetype == 'java'
  inoremap <silent><expr> <c-space> coc#refresh()
 else
  inoremap <silent><expr> <c-space> coc#refresh()
endif

" con las feclas ajustas el tamaño del búfer's abiertos
nnoremap <silent> <right> :vertical resize +2<CR>
nnoremap <silent> <left> :vertical resize -2<CR>
nnoremap <silent> <up> :vertical resize +2<CR>
nnoremap <silent> <down> :vertical resize -2<CR>

" aplicar AutoFix al problema en la línea actual.
nmap <Leader>qf <Plug>(coc-fix-current)

" asignar función y objetos de texto de clase
" NOTA: Requiere compatibilidad con 'textDocument.documentSymbol' del servidor de idiomas.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" vuelva a asignar <C-f> y <C-b> para las ventanas / ventanas emergentes flotantes de desplazamiento.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" acceso rápido a las funcionalidades de CoCList
" administrar extensiones
nnoremap <silent><nowait> <space>coc  :<C-u>CocList extensions<CR>
" conocer y administrar snippets
nnoremap <silent><nowait> <space>csn  :<C-u>CocList snippets<CR>
