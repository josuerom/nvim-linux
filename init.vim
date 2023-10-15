"*-------------- Configuración Inicial [init.vim] 25/Septiembre/2022 11:29a.m COL --------------*

"                        ██╗███╗░░██╗██╗████████╗░░░██╗░░░██╗██╗███╗░░░███╗
"                        ██║████╗░██║██║╚══██╔══╝░░░██║░░░██║██║████╗░████║
"                        ██║██╔██╗██║██║░░░██║░░░░░░╚██╗░██╔╝██║██╔████╔██║
"                        ██║██║╚████║██║░░░██║░░░░░░░╚████╔╝░██║██║╚██╔╝██║
"                        ██║██║░╚███║██║░░░██║░░░██╗░░╚██╔╝░░██║██║░╚═╝░██║
"                        ╚═╝╚═╝░░╚══╝╚═╝░░░╚═╝░░░╚═╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝
"                                      Creado por >> josuerom
"                             Twitter >> https://twitter.com/josueromr

syntax enable
set number
set mouse=a
set numberwidth=1
set relativenumber
set clipboard=unnamedplus
set background=dark
set ruler
set sw=3
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
set hidden
set cmdheight=1
set updatetime=50
set shortmess+=c

autocmd BufWritePre * :%s/\s\+$//e
autocmd FileType java :call RunJava()
autocmd FileType cpp :call RunCpp()
autocmd FileType cpp,java :call EditInputFiles()
"autocmd FileType python :call RunPython()
"autocmd FileType javascript,typescript :call RunJsAndTs()

"██████╗ ██╗     ██╗   ██╗ ██████╗ ██╗███╗   ██╗███████╗  ██╗   ██╗██╗███╗   ███╗
"██╔══██╗██║     ██║   ██║██╔════╝ ██║████╗  ██║██╔════╝  ██║   ██║██║████╗ ████║
"██████╔╝██║     ██║   ██║██║  ███╗██║██╔██╗ ██║███████╗  ██║   ██║██║██╔████╔██║
"██╔═══╝ ██║     ██║   ██║██║   ██║██║██║╚██╗██║╚════██║  ╚██╗ ██╔╝██║██║╚██╔╝██║
"██║     ███████╗╚██████╔╝╚██████╔╝██║██║ ╚████║███████║██╗╚████╔╝ ██║██║ ╚═╝ ██║
"╚═╝     ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝╚═╝  ╚═══╝╚══════╝╚═╝ ╚═══╝  ╚═╝╚═╝     ╚═╝

call plug#begin('~/.config/nvim/plugins')

  Plug 'sheerun/vim-polyglot'
  Plug 'morhetz/gruvbox'
  Plug 'shinchu/lightline-gruvbox.vim'
  Plug 'navarasu/onedark.nvim'
  Plug 'tanvirtin/monokai.nvim'
  Plug 'itchyny/lightline.vim'
  Plug 'scrooloose/nerdtree'
  Plug 'ryanoasis/vim-devicons' "Nerd Font in terminal
  Plug 'easymotion/vim-easymotion'
  Plug 'tpope/vim-surround'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'terryma/vim-multiple-cursors'
  Plug 'preservim/nerdcommenter'
  Plug 'jiangmiao/auto-pairs'

call plug#end()

" ajuste del tema
colorscheme onedark
"colorscheme gruvbox
"colorscheme monokai

"██████╗ ██╗     ██╗   ██╗ ██████╗        ██████╗ ██████╗ ███╗   ██╗███████╗██╗ ██████╗   ██╗   ██╗██╗███╗   ███╗
"██╔══██╗██║     ██║   ██║██╔════╝       ██╔════╝██╔═══██╗████╗  ██║██╔════╝██║██╔════╝   ██║   ██║██║████╗ ████║
"██████╔╝██║     ██║   ██║██║  ███╗█████╗██║     ██║   ██║██╔██╗ ██║█████╗  ██║██║  ███╗  ██║   ██║██║██╔████╔██║
"██╔═══╝ ██║     ██║   ██║██║   ██║╚════╝██║     ██║   ██║██║╚██╗██║██╔══╝  ██║██║   ██║  ╚██╗ ██╔╝██║██║╚██╔╝██║
"██║     ███████╗╚██████╔╝╚██████╔╝      ╚██████╗╚██████╔╝██║ ╚████║██║     ██║╚██████╔╝██╗╚████╔╝ ██║██║ ╚═╝ ██║
"╚═╝     ╚══════╝ ╚═════╝  ╚═════╝        ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝     ╚═╝ ╚═════╝ ╚═╝ ╚═══╝  ╚═╝╚═╝     ╚═╝

" configuración de la barra de estado inferior
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
    \ 'colorscheme': 'onedark',
    \ 'subseparator': {
    \   'left': '',
    \   'right': ''
    \ }
    \}

let g:coc_global_extensions = [
  \ 'coc-snippets',
\]

" configuración de coc-snippets
let g:coc_snippets_next = '<c-j>'
let g:coc_snippets_prev = '<c-k>'
imap <C-l> <Plug>(coc-snippets-expand)
imap <C-j> <Plug>(coc-snippets-expand-jump)
xmap <Leader>y  <Plug>(coc-convert-snippet)

" cerrado automatico de la barra lateral o tree
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowLineNumbers=1
let NERDTreeWinPos="right"

" navegación rápida tmux
let g:tmux_navigator_no_mappings=1

" interfaz de búsqueda FZF (Line Fuzzy Finder)
let $FZF_DEFAULT_OPTS='--layout=reverse'

"*---------------------- FUNCIÓN PARA INTEGRAR LA SHELL BASH O ZSH -------------------------*
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
    " execute 'sp term://zsh'
    execute "sp term://bash"
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
" ejecuta el sgt comando en tu distribución Linux:
" sudo dnf install python3 python3-pip -y && pip install pynvim

" Solución al error de (python3-script-host)
"let g:python3_host_prog="~/.virtualenvs/neovim-python3-venv/bin/python3"

"███████╗██╗  ██╗ ██████╗ ██████╗ ████████╗ ██████╗██╗   ██╗████████╗███████╗  ██╗   ██╗██╗███╗   ███╗
"██╔════╝██║  ██║██╔═══██╗██╔══██╗╚══██╔══╝██╔════╝██║   ██║╚══██╔══╝██╔════╝  ██║   ██║██║████╗ ████║
"███████╗███████║██║   ██║██████╔╝   ██║   ██║     ██║   ██║   ██║   ███████╗  ██║   ██║██║██╔████╔██║
"╚════██║██╔══██║██║   ██║██╔══██╗   ██║   ██║     ██║   ██║   ██║   ╚════██║  ╚██╗ ██╔╝██║██║╚██╔╝██║
"███████║██║  ██║╚██████╔╝██║  ██║   ██║   ╚██████╗╚██████╔╝   ██║   ███████║██╗╚████╔╝ ██║██║ ╚═╝ ██║
"╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝    ╚═════╝ ╚═════╝    ╚═╝   ╚══════╝╚═╝ ╚═══╝  ╚═╝╚═╝     ╚═╝

let mapleader = " "

function! RunJava()
   imap <F2> <Esc> :w<CR> :!java % < ~/workspace/samples/in1<CR>
   nmap <F2> :w<CR> :!java % < ~/workspace/samples/in1<CR>
   imap <F3> <Esc> :w<CR> :!java % < ~/workspace/samples/in2<CR>
   nmap <F3> :w<CR> :!java % < ~/workspace/samples/in2<CR>
   imap <F4> <Esc> :w<CR> :!java % < ~/workspace/samples/in3<CR>
   nmap <F4> :w<CR> :!java % < ~/workspace/samples/in3<CR>
   nmap <F5> :w<CR> :!cd %:h<CR> :terminal<CR>ils<CR>java
endfunction

function! RunCpp()
   imap <F1> <Esc> :w<CR> :!g++ % -o ~/workspace/bin/sol.out -std=c++17 -Wall -pedantic -DDEBUG -DLOCAL<CR>
   nmap <F1> :w<CR> :!g++ % -o ~/workspace/bin/sol.out -std=c++17 -Wall -pedantic -DDEBUG -DLOCAL<CR>
   imap <F2> <Esc> :w<CR> :!~/workspace/bin/sol.out < ~/workspace/sample/input<CR>
   nmap <F2> :w<CR> :!~/workspace/bin/sol.out < ~/workspace/sample/input<CR>
   nmap <F3> :w<CR> :cd ~/workspace/bin/<CR> :terminal<CR>i./sol.out<CR>
endfunction

function! RunPython()
   imap <F2> <Esc> :w<CR> :!python3 % < ~/workspace/sample/input<CR>
   nmap <F2> :w<CR> :!python3 % < ~/workspace/sample/input<CR>
   nmap <F3> :w<CR> :!cd %:h<CR> :terminal<CR>ils<CR>python3
endfunction

function! RunJsAndTs()
   imap <F1> <Esc> :w<CR> :!node %<CR>
   nmap <F1> :w<CR> :!node %<CR>

   imap <F2> <Esc> :w<CR> :!node % < ~/workspace/sample/input<CR>
   nmap <F2> :w<CR> :!node % < ~/workspace/sample/input<CR>
   nmap <F3> :w<CR> :!cd %:h<CR> :terminal<CR>ils<CR>node
endfunction

"function! RunLanguage()
"   mode <key> <Esc> command
"endfunction

noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

imap <C-c> <Esc>
imap ññ <Esc>

nnoremap <C-k> 50 <C-e>
nnoremap <C-j> 50 <C-y>

nnoremap > 5<C-w>>
nnoremap < 5<C-w><

nnoremap <Leader>, $a;<Esc>

nmap <Leader>t :call OpenTerminal()<CR> <Esc> :resize 14<CR>

nmap <Leader>¿ :e $MYVIMRC<CR>
nmap <F4> :w<CR> :e ~/workspace/sample/input<CR>
imap <F4> <Esc> :w<CR> :e ~/workspace/sample/input<CR>

nnoremap <F5> :so $MYVIMRC<CR>
nnoremap <F6>kp :let @*=expand("%")<CR>
nmap <F7> :so ~/.config/nvim/init.vim<CR>

imap <C-c> <Esc> :w<CR> :%y+<CR>
nmap <C-c> :w<CR> :%y+<CR>

nmap <Leader>w :w!<CR>
nmap <C-s> :w!<CR>
imap <C-s> <Esc> :w!<CR>

nmap <C-q> :q<CR>
nmap <Leader>q :q<CR>
imap <C-q> <Esc> :q<CR>

nmap <C-x> :qa!<CR>
nmap <Leader>x :qa!<CR>
imap <C-x> <Esc> :qa!<CR>

nmap <Leader>e :NERDTreeToggle<CR>
nmap <Leader>p :Explore<CR>
nmap <Leader>f :FZF<CR>

vmap }} <plug>NERDCommenterToggle
nmap }} <plug>NERDCommenterToggle
imap }} <Esc> :w<CR> <plug>NERDCommenterToggle

nnoremap <silent><C-h> :TmuxNavigateLeft<CR>
nnoremap <silent><C-j> :TmuxNavigateDown<CR>
nnoremap <silent><C-k> :TmuxNavigateUp<CR>
nnoremap <silent><C-l> :TmuxNavigateRight<CR>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <Leader>ii :vsp<CR>

nnoremap <Leader>l :bnext<CR>
nnoremap <Leader>h :bprevious<CR>
nnoremap <Leader>dl :bdelete<CR>

nmap <Leader>s <Plug>(easymotion-s2)

nnoremap <Leader>pi :PlugInstall<CR>
nnoremap <Leader>pc :PlugClean<CR>
nnoremap <Leader>pu :PlugUpdate<CR>
nnoremap <Leader>pp :PlugUpgrade<CR>

vnoremap < <gv
vnoremap > >gv

" para multiples cursores debe poner el cursor encima de una palabra y presionar
" <ctrl+n> para buscar las coincidencias en el archivo y luego presione <c>
" para editar el contenido seleccionado

" para agrupar una cadena de texto con cualquier simbolo ya sea: () [] {} '' ""
" debes selecionar la palabra hasta un carácter antes y presionar: <s+el-simbolo-a-usar>
" por ejemplo: <s+[>
xmap s <Plug>VSurround

" mover bloques de código seleccionado en modo VISUAL, V-LINE o V-BLOCK con <K> subes el código y con <J> lo bajas
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" cambia la posición de una línea
nnoremap n :m .-2<CR>==
nnoremap m :m .+1<CR>==

" Para camiar el carácter que contenga una cadena de texto o cambiar el carácteres que los contiene,
" por ejemplo: si tienes un: 'Hi! World' al presionar <cs+el-simbolo-a-usar> la cadena de carácteres
" que los agrupa magicamente se cambiaran sin necesidad de realizarlo manualmente

nnoremap <silent><nowait> <F12> :<C-u>CocList snippets<CR>
nnoremap <silent><nowait> <Leader>cup :<C-u>CocUpdate<CR>
nnoremap <silent><nowait> <Leader>cun :<C-u>CocUninstall coc-

" NOTA: para que mi configuración le funcione correctamente y no inicie con errores.
" USTED DEBE INSTALAR las siguientes 6 herramientas:
"   git nodejs python3 npm yarn 
" Y vim-plug --> https://github.com/junegunn/vim-plug
