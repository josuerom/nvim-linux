"*----------- Configuración [init.vim] 25/Mayo/2022 11:39p.m COL -----------*
 
							"██╗███╗░░██╗██╗████████╗░░░██╗░░░██╗██╗███╗░░░███╗
							"██║████╗░██║██║╚══██╔══╝░░░██║░░░██║██║████╗░████║
							"██║██╔██╗██║██║░░░██║░░░░░░╚██╗░██╔╝██║██╔████╔██║
							"██║██║╚████║██║░░░██║░░░░░░░╚████╔╝░██║██║╚██╔╝██║
							"██║██║░╚███║██║░░░██║░░░██╗░░╚██╔╝░░██║██║░╚═╝░██║ 
							"╚═╝╚═╝░░╚══╝╚═╝░░░╚═╝░░░╚═╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝
									 " Creado por >> Josué Romero
									 " Twitter >> https://twitter.com/Josueromr
									 
syntax enable
set number
set mouse=a
set relativenumber
set clipboard=unnamedplus
set background=dark
set ruler
set sw=3
set tabstop=3
set termguicolors
set showmatch
set showcmd
set noshowmode
set laststatus=2
set hlsearch
set ignorecase
set smartcase
set splitbelow
set splitright
set secure
set exrc
set foldmethod=manual
set mat=2
set smarttab
set langmenu=latin1
let $LANG='latin1'

" Conquer Of Completion COC
set hidden
set cmdheight=1
set updatetime=100
set shortmess+=c

" otros ajustes
autocmd! BufWritePost init.vim source ~/AppData/Local/nvim/init.vim
autocmd BufWritePre * :%s/\s\+$//e
autocmd FileType java :call RunJava()
autocmd FileType python :call RunPython()
autocmd FileType javascript :call RunJsAndTs()
autocmd FileType typescript :call RunJsAndTs()

"██████╗ ██╗     ██╗   ██╗ ██████╗ ██╗███╗   ██╗███████╗  ██╗   ██╗██╗███╗   ███╗
"██╔══██╗██║     ██║   ██║██╔════╝ ██║████╗  ██║██╔════╝  ██║   ██║██║████╗ ████║
"██████╔╝██║     ██║   ██║██║  ███╗██║██╔██╗ ██║███████╗  ██║   ██║██║██╔████╔██║
"██╔═══╝ ██║     ██║   ██║██║   ██║██║██║╚██╗██║╚════██║  ╚██╗ ██╔╝██║██║╚██╔╝██║
"██║     ███████╗╚██████╔╝╚██████╔╝██║██║ ╚████║███████║██╗╚████╔╝ ██║██║ ╚═╝ ██║
"╚═╝     ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝╚═╝  ╚═══╝╚══════╝╚═╝ ╚═══╝  ╚═╝╚═╝     ╚═╝
								
call plug#begin('~/.config/nvim/plugged')

" resaltado de sintaxis
Plug 'sheerun/vim-polyglot'
"Plug 'kien/rainbow_parentheses.vim'

" tema
Plug 'morhetz/gruvbox'

" barra de estado
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'itchyny/lightline.vim'

" barra lateral - iconos
Plug 'scrooloose/nerdtree'
"Plug 'ryanoasis/vim-devicons'

" búsqueda - agrupador
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'

" navegación entre pestañas
Plug 'christoomey/vim-tmux-navigator'

" autocompletado - snippets
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'SirVer/ultisnips'

" historial de commits
Plug 'junegunn/gv.vim'

" IDE
Plug 'terryma/vim-multiple-cursors'
Plug 'preservim/nerdcommenter'
Plug 'junegunn/fzf', {'do': {-> fzf#install()}}
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/syntastic'
Plug 'junegunn/goyo.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'

call plug#end()

" ajustes del tema
"let g:gruvbox_italic=1
let no_buffers_menu=1
" soft medium hard
let g:gruvbox_contrast_dark="hard"
highlight Normal ctermbg=none
colorscheme gruvbox

"██████╗ ██╗     ██╗   ██╗ ██████╗        ██████╗ ██████╗ ███╗   ██╗███████╗██╗ ██████╗   ██╗   ██╗██╗███╗   ███╗
"██╔══██╗██║     ██║   ██║██╔════╝       ██╔════╝██╔═══██╗████╗  ██║██╔════╝██║██╔════╝   ██║   ██║██║████╗ ████║
"██████╔╝██║     ██║   ██║██║  ███╗█████╗██║     ██║   ██║██╔██╗ ██║█████╗  ██║██║  ███╗  ██║   ██║██║██╔████╔██║
"██╔═══╝ ██║     ██║   ██║██║   ██║╚════╝██║     ██║   ██║██║╚██╗██║██╔══╝  ██║██║   ██║  ╚██╗ ██╔╝██║██║╚██╔╝██║
"██║     ███████╗╚██████╔╝╚██████╔╝      ╚██████╗╚██████╔╝██║ ╚████║██║     ██║╚██████╔╝██╗╚████╔╝ ██║██║ ╚═╝ ██║
"╚═╝     ╚══════╝ ╚═════╝  ╚═════╝        ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝     ╚═╝ ╚═════╝ ╚═╝ ╚═══╝  ╚═╝╚═╝     ╚═╝

" configuración de la barra de estado inferioir
let g:lightline = {
    \ 'active': {
    \   'left': [['mode', 'paste'], [], ['relativepath', 'modified']],
    \   'right': [['kitestatus'], ['filetype', 'percent', 'lineinfo'], ['gitbranch']]
    \ },
    \ 'inactive': {
    \   'left': [['inactive'], ['relativepath']],
    \   'right': [['bufnum']]
    \ },
    \ 'component': {
    \   'bufnum': '%n',
    \   'inactive': 'inactive'
    \ },
    \ 'component_function': {
    \   'gitbranch': 'fugitive#head',
    \   'kitestatus': 'kite#statusline'
    \ },
    \ 'colorscheme': 'gruvbox',
    \ 'subseparator': {
    \   'left': '',
    \   'right': ''
    \ }
    \}

" ajuste para mostrar errores una vez se guarde el archivo
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0

" si usted utiliza el autocompletado KITE descomente la sgt línea y agregue sus lenguajes.
"let g:kite_supported_languages = ['lenguaje', ...]
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-tsserver',
  \ 'coc-java'
  \]

" configuración de UltiSnips
let g:UltiSnipsSnippetDirectories=[$HOME.'/AppData/Local/nvim/snips']
let g:UltiSnipsExpandTrigger="<tab>"

" use <C-j & C-k> para saltar al siguiente y anterior marcador de posición en los snippets
let g:coc_snippet_next = '<C-j>'
let g:coc_snippet_prev = '<C-k>'

" cerrado automatico de la barra lateral o tree
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowLineNumbers=1

" navegación rápida tmux
let g:tmux_navigator_no_mappings=1

" interfaz de búsqueda FZF (Line Fuzzy Finder)
let $FZF_DEFAULT_OPTS='--layout=reverse'

"*------------------------ FUNCIÓNES PARA INTEGRAR LAS TERMINALES DE WINDOWS ---------------------------*
function! OpenTerminal()
  execute "normal \<C-l>"
  execute "normal \<C-l>"
  execute "normal \<C-l>"
  execute "normal \<C-l>"

  let bufNum = bufnr("%")
  let bufType = getbufvar(bufNum, "&buftype", "not found")

  if bufType == "terminal"
    " cerrar terminal existente
    execute "q"
  else
    " se abrirá la shell zsh, pero si usted utilizas otra, debes poner el nombre
    " de la shell en la línea 194, ya sea: 'zsh, bash, fish', quedando la así: 
    " execute 'sp term://bash'
    execute "sp term://zsh"
    " apagar números
    execute "set nonu"
    execute "set nornu"

    " alternar insertar en entrar o salir
    silent au BufLeave <buffer> stopinsert!
    silent au BufWinEnter,WinEnter <buffer> startinsert!

    " establezco atajos dentro de la terminal
    execute "tnoremap <buffer> <Esc> <C-\\><C-n><C-w><C-h>"
    execute "tnoremap <buffer> <C-t> <C-\\><C-n>:q<CR>"
    execute "tnoremap <buffer> <C-7> <C-\\><C-\\><C-n>"
    startinsert!
  endif
endfunction

"*---------------------- SOLUCIÓN A EL ERROR DE COC-SNIPPETS -----------------------*
" Si al iniciar neovim te aparece siempre este molestoso error:
" [coc.nvim] Error on execute :pyx command, ultisnips feature of coc-snippets requires pyx support on vim.
" ejecuta los sgts comando en tu distribución Fedora:
" sudo dnf install python3
" sudo dnf install python3-pip
" pip install pynvim

"*--------------------- CONFIGURACIÓN COMPLETA DE CONQUER OF COMPLETION) --------------------*
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.7.0") || has("patch-8.1.1564")
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! CheckBackspace() abort
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

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
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

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

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

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

"███████╗██╗  ██╗ ██████╗ ██████╗ ████████╗ ██████╗██╗   ██╗████████╗███████╗  ██╗   ██╗██╗███╗   ███╗
"██╔════╝██║  ██║██╔═══██╗██╔══██╗╚══██╔══╝██╔════╝██║   ██║╚══██╔══╝██╔════╝  ██║   ██║██║████╗ ████║
"███████╗███████║██║   ██║██████╔╝   ██║   ██║     ██║   ██║   ██║   ███████╗  ██║   ██║██║██╔████╔██║
"╚════██║██╔══██║██║   ██║██╔══██╗   ██║   ██║     ██║   ██║   ██║   ╚════██║  ╚██╗ ██╔╝██║██║╚██╔╝██║
"███████║██║  ██║╚██████╔╝██║  ██║   ██║   ╚██████╗╚██████╔╝   ██║   ███████║██╗╚████╔╝ ██║██║ ╚═╝ ██║
"╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝    ╚═════╝ ╚═════╝    ╚═╝   ╚══════╝╚═╝ ╚═══╝  ╚═╝╚═╝     ╚═╝

let mapleader = " "

" ejecute sus programas (.java .py .js & .ts)
" en modo NORMAL o INSERT
function! RunJava()
	imap <F1> <Esc> :w<CR> :!java %<CR>
	nmap <F1> :w<CR> :!java %<CR>
endfunction

function! RunPython()
	imap <F1> <Esc> :w<CR> :!python %<CR>
	nmap <F1> :w<CR> :!python %<CR>
endfunction

function! RunJsAndTs()
	imap <F1> <Esc> :w<CR> :!node %<CR>
	nmap <F1> :w<CR> :!node %<CR>
endfunction

" para el modo NORMAL desabilito el desplazamiento con las flechas
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" salir del modo INSERT con <Esc> <Ctrl+c> o <jj>
imap <C-c> <Esc>
imap jj <Esc>

" desplazamiento vertical rápido con (hacia abajo -> ctrl+e) (hacia arriba -> ctrl+y)
nnoremap <C-k> 50 <C-e>
nnoremap <C-j> 50 <C-y>

" cambia el tamaño de pestañas verticales
nnoremap > 5<C-w>>
nnoremap < 5<C-w><

" coloca un punto y coma al final de la línea, con <space+,>
nnoremap <Leader>, $a;<Esc>

" con <space+t> abres la terminal dentro neovim
nmap <Leader>t :call OpenTerminal()<CR> <Esc> :resize 14<CR>

" elimina todos los espacios en blanco que contenga el archivo, con <F2>
nnoremap <F2> :%s/\s\+$//e<CR>
" abre el archivo de configuración general con <F3>
nnoremap <F3> :e $MYVIMRC<CR>
" copia la ruta general del archivo abierto con <F4>
nnoremap <F4>kp :let @*=expand("%")<CR>
" refresca neovim con <F5>
nmap <F5> :so ~/.config/nvim/init.vim<CR>

" entre al modo goyo sin distracciones, con <F7>
nmap <F7> :Goyo<CR>
imap <F7> <Esc> :Goyo<CR>

" para guardar los cambios del archivo presione <space+w> en modo NORMAL o <ctrl+s> en INSERT
nnoremap <Leader>w :w<CR>
imap <C-s> <Esc> :w<CR>
" para cerrar búfers <space+q>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>qq :q!<CR>
" para salir rápidamente de nvim <space+x>
nnoremap <Leader>x :qa!<CR>

" abre el árbol, side bar o NERDTree
nmap <Leader>e :NERDTreeToggle<CR>
" abre arbol de nvim
nmap <Leader>p :Explore<CR>
" ejecute FZF (Fuzy Find Files)
nmap <Leader>f :FZF<CR>

" comentar líneas con <}+}>
vmap }} <plug>NERDCommenterToggle
nmap }} <plug>NERDCommenterToggle
imap }} <Esc> :w<CR> <plug>NERDCommenterToggle

" navegación rápida entre buffers abiertos
nnoremap <silent><C-h> :TmuxNavigateLeft<CR>
nnoremap <silent><C-j> :TmuxNavigateDown<CR>
noremap <silent><C-k> :TmuxNavigateUp<CR>
nnoremap <silent><C-l> :TmuxNavigateRight<CR>

" atajos para el flujo rápido con git
nnoremap <Leader>go :GV<CR>
nnoremap <Leader>g :Git init<CR>
nnoremap <Leader>gs :Git status<CR>
nnoremap <Leader>ga :Git add -A<CR>
nnoremap <Leader>gc :Git commit -m "♻ Update"<CR>
nnoremap <Leader>gcc :Git commit -v<CR>
nnoremap <Leader>glg :Git log --oneline<CR>
nnoremap <Leader>grr :Git remote add origin https://github.com/josuerom/.git
nnoremap <Leader>gpp :Git push -u origin main<CR>
nnoremap <Leader>gp :Git push<CR>
nnoremap <Leader>gpu :Git push --set-upstream origin main<CR>
nnoremap <Leader>gf :Git fetch<CR>
nnoremap <Leader>gl :Git pull<CR>
nnoremap <Leader>gm :Git merge<CR>
nnoremap <Leader>ge :Git revert

" flujo instantaneo con COC
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" dividir pantalla en dos [vertical] con space+i
nnoremap <Leader>ii :vsplit<CR>
" dividir pantalla en dos [horizontal] con space+o
"nnoremap <Leader>oo :split<CR>

" navegación entre pestañas abiertas con <spacer+l> y <space+h>
nnoremap <Leader>l :bnext<CR>
nnoremap <Leader>h :bprevious<CR>
nnoremap <Leader>dl :bdelete<CR>

" búsqueda por dos carácteres con easymotion
nmap <Leader>s <Plug>(easymotion-s2)

" atajos para el gestor vim-plug
nnoremap <Leader>pi :PlugInstall<CR>
nnoremap <Leader>pc :PlugClean<CR>
nnoremap <Leader>pu :PlugUpdate<CR>
nnoremap <Leader>pp :PlugUpgrade<CR>

" indentar líneas y bloques en cualquier modo VISUAL
vnoremap < <gv
vnoremap > >gv

" para multiple cursor debe poner el cursor encima de una palabra y presionar
" <ctrl+n> para buscar las coincidencias en el archivo y luego presione <c>
" para cambiar su contenido

" para agrupar una cadena de texto con cualquier simbolo ya sea: () [] {} '' "" debes
" selecionar la palabra hasta un carácter antes y presionar: <s+el-simbolo-a-usar>
" por ejemplo: <s+[>
xmap s <Plug>VSurround

" mover bloques de código seleccionado en modo VISUAL, V-LINE o V-BLOCK con <K> subes el código y con <J> lo bajas
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" cambiar la posición de las líneas
nnoremap n :m .-2<CR>==
nnoremap m :m .+1<CR>==

" Para camiar el carácter que contenga una cadena de texto o cambiar el carácteres que los contiene,
" por ejemplo: si tienes un: 'Hi UserName' al presionar cs+el-simbolo-a-usar, la cadena de carácteres
" magicamente se cambiará sin necesidad de realizarlo manualmente.

" entrega o gatillado automatico de sugerencias - autocompletado COC
imap <silent><expr> <C-space> coc#refresh()

" administrar todos los snippets con <F12>
nnoremap <silent><nowait> <F12> :<C-u>CocList snippets<CR>
" actualizar extensiones
nnoremap <silent><nowait> <Leader>cuu :<C-u>CocUpdate<CR>
" desintalar extensiones
nnoremap <silent><nowait> <Leader>cii :<C-u>CocUninstall coc-

" Use <C-j> para saltar a los demás marcadores de posición
imap <C-j> <Plug>(coc-snippets-expand-jump)
" Use <space+y> para convertir el código seleccionado en un snippet
xmap <Leader>y  <Plug>(coc-convert-snippet)
