set nocompatible
" set shellcmdflag=-ci

""""""""""""""""""""""""""""""""""""""""
" Vundle
""""""""""""""""""""""""""""""""""""""""
filetype off

let g:ulti_color_filetype=0

if has("gui_running") == 0
  let g:ulti_color_auto_save=0
  let g:ulti_color_auto_load=0
endif

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

if $TMUX == ''
  " use system registry for clipboard (not available in tmux)
  set clipboard+=unnamed
endif

set encoding=utf8
set ffs=unix,dos,mac

" avoid long waiting times
set timeoutlen=500

" speed up rendering
set lazyredraw
set ttyfast
set t_ut=

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
set shiftround

""""""""""""""""""""""""""""""""""""""""
" User interface
""""""""""""""""""""""""""""""""""""""""
set t_Co=256
set mouse=a

colorscheme jellybeans

if has("gui_running")
  set guioptions=Aem
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

if !has("gui_running")
  " Use term bg color
  highlight Normal ctermbg=none
endif

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

" If no omnifunc exists for the current file type use default completition
autocmd Filetype * if &omnifunc == "" | setlocal omnifunc=syntaxcomplete#Complete |	endif

""""""""""""""""""""""""""""""""""""""""
" Tags
""""""""""""""""""""""""""""""""""""""""

" Use tagfile for each project
set tags=tags
