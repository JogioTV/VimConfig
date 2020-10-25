set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2

"Aquí es donde se instalan los plugins y temas
call plug#begin('~/.vim/plugged')
" Temas 
Plug 'drewtempelmeyer/palenight.vim'

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-airline/vim-airline'
Plug 'pangloss/vim-javascript'
Plug 'vim-python/python-syntax'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'zxqfl/tabnine-vim'
call plug#end()

" MAPEO DE TECLAS
" Tecla líder
let mapleader=" "
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
:imap ,, <Esc>
nmap <buffer> <F5> :w !python3
" Easymotion
nmap <Leader>s <Plug>(easymotion-s2)

"NerdTree
nmap <Leader>nt :NERDTreeFind<CR>
let NERDTreeQuitOnOpen=1

"Python-Syntax
let g:python_highlight_all = 1

"JavaScript-Syntax
let g:javascript_plugin_jsdoc = 1

"Coc
noremap <leader>gs :CocSearch


" THIS IS COLOR AND TEXT CONFIGURATION!!
set background=dark
colorscheme palenight
" Configure lightline
let g:lightline = { 'colorscheme': 'palenight' }
let g:airline_theme = "palenight"

if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif
" Activar las italicas
let g:palenight_terminal_italics=1
"Overriding colors
let g:palenight_color_overrides = {
\    'black': { 'gui': '#000000', "cterm": "0", "cterm16": "0" },
\}
