"*----------- Configuración [init.vim] 21/Febrero/2021 7:56a.m COL -----------*
 
							"██╗███╗░░██╗██╗████████╗░░░██╗░░░██╗██╗███╗░░░███╗
							"██║████╗░██║██║╚══██╔══╝░░░██║░░░██║██║████╗░████║
							"██║██╔██╗██║██║░░░██║░░░░░░╚██╗░██╔╝██║██╔████╔██║
							"██║██║╚████║██║░░░██║░░░░░░░╚████╔╝░██║██║╚██╔╝██║
							"██║██║░╚███║██║░░░██║░░░██╗░░╚██╔╝░░██║██║░╚═╝░██║ 
							"╚═╝╚═╝░░╚══╝╚═╝░░░╚═╝░░░╚═╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝
									 " Configurado por >> Josué Romero
									 " Twitter >> https://twitter.com/Josueromr
									 
syntax on
set title
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
set hlsearch
set incsearch
set ignorecase
set smartcase
set splitbelow
set splitright

" configuración de COC
set encoding=utf-8
set hidden
set nobackup
set nowritebackup
set cmdheight=1
set updatetime=150
set shortmess+=c

" importo los archivos de configuración global
so $HOME/.config/nvim/general/plug-config.vim
so $HOME/.config/nvim/general/plugins.vim
so $HOME/.config/nvim/general/maps.vim

" ajustes del tema
let g:gruvbox_italic=1
let no_buffers_menu=1
" contrates: soft, medium & hard
let g:gruvbox_contrast_dark="hard"
highlight Normal ctermbg=none
colorscheme gruvbox
