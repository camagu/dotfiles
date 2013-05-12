set nocompatible

""""""""""""""""""""""""""""""""""""""""
" Vundle
""""""""""""""""""""""""""""""""""""""""
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'

" Colors

Bundle 'twerth/ir_black'
Bundle 'endel/vim-github-colorscheme'


""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""
filetype plugin on
filetype indent on

let mapleader=","
let g:mapleader=","

set autoread
set hidden
set switchbuf=useopen

set clipboard=unnamed

set encoding=utf8
set ffs=unix,dos,mac

""""""""""""""""""""""""""""""""""""""""
" Undo and history
""""""""""""""""""""""""""""""""""""""""
set history=1000
set undolevels=1000
set nobackup
set noswapfile

""""""""""""""""""""""""""""""""""""""""
" Tabs
""""""""""""""""""""""""""""""""""""""""
set expandtab
set smarttab
set tabstop=2
set softtabstop=2
set shiftwidth=2 
set nowrap

""""""""""""""""""""""""""""""""""""""""
" User interface
""""""""""""""""""""""""""""""""""""""""
set t_Co=256
set mouse=a

if has("gui_running")
  set guioptions=Aem
endif

set wildmenu
set number
set ruler
set showcmd
set title
set scrolloff=4

set laststatus=2

syntax enable
colorscheme ir_black

"""""""""""""""""""""""""""""""""""""""
" Search
""""""""""""""""""""""""""""""""""""""""
set magic
set ignorecase
set smartcase
set hlsearch
set incsearch

""""""""""""""""""""""""""""""""""""""""
" Mappings
""""""""""""""""""""""""""""""""""""""""
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>i

nnoremap <leader>m :set colorcolumn=80<CR>
nnoremap <leader>M :set colorcolumn=<CR>

map <silent> <leader><cr> :noh<cr>
