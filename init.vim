"*----------- Configuración [init.vim] 21/Febrero/2021 7:56a.m COL -----------*
 
							"██╗███╗░░██╗██╗████████╗░░░██╗░░░██╗██╗███╗░░░███╗
							"██║████╗░██║██║╚══██╔══╝░░░██║░░░██║██║████╗░████║
							"██║██╔██╗██║██║░░░██║░░░░░░╚██╗░██╔╝██║██╔████╔██║
							"██║██║╚████║██║░░░██║░░░░░░░╚████╔╝░██║██║╚██╔╝██║
							"██║██║░╚███║██║░░░██║░░░██╗░░╚██╔╝░░██║██║░╚═╝░██║ 
							"╚═╝╚═╝░░╚══╝╚═╝░░░╚═╝░░░╚═╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝
									 " Configurado por >> Josué Romero
									 " Twitter >> https://twitter.com/Josueromram
" importo los archivos de configuración global
so ~/.config/nvim/.configs/plugins-config.vim
so ~/.config/nvim/.configs/plugins.vim
so ~/.config/nvim/.configs/maps.vim

syntax on
"set title
set number
set mouse=a
set numberwidth=1
set relativenumber
set clipboard=unnamedplus
set ruler
set cursorline
set termencoding=utf-8
set scrolloff=8
set tabstop=2
set sw=2
set laststatus=2
set showmatch
set showcmd
set termguicolors
set nowrap
set noshowmode
set noswapfile

" para la búsqueda en la cmd
set hlsearch
set incsearch
set ignorecase
set smartcase

" para la terminal
set splitbelow
set splitright

" configuración de COC
set encoding=utf-8
set hidden
set nobackup
set nowritebackup
set cmdheight=1
set updatetime=300
set shortmess+=c

" configuración del tema
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
highlight Normal ctermbg = NONE
