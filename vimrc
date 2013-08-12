set nocompatible
set shellcmdflag=-ci

""""""""""""""""""""""""""""""""""""""""
" Vundle
""""""""""""""""""""""""""""""""""""""""
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

source ~/.vim/vundle.vim

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
  colorscheme codeschool
endif

set wildmenu
set number
set ruler
set showcmd
set title
set noshowmode
set scrolloff=4

set laststatus=2

syntax enable

"""""""""""""""""""""""""""""""""""""""
" Search
""""""""""""""""""""""""""""""""""""""""
set magic
set ignorecase
set smartcase
set hlsearch
set incsearch

""""""""""""""""""""""""""""""""""""""""
" Complete
""""""""""""""""""""""""""""""""""""""""
set completeopt=longest,menuone

autocmd Filetype * if &omnifunc == "" | setlocal omnifunc=syntaxcomplete#Complete |	endif

""""""""""""""""""""""""""""""""""""""""
" Mappings
""""""""""""""""""""""""""""""""""""""""

nnoremap <leader>m :set colorcolumn=80<CR>
nnoremap <leader>M :set colorcolumn=<CR>

map <silent> <leader><cr> :noh<cr>
