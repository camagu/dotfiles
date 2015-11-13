set nocompatible
filetype plugin on
filetype indent on
syntax on

""""""""""""""""""""""""""""""""""""""""
" VAM
"
" SEE: https://github.com/MarcWeber/vim-addon-manager
""""""""""""""""""""""""""""""""""""""""

function! SetupVAM() " {{{
  let l:config = get(g:, 'vim_addon_manager', {})

  let g:vim_addon_manager = l:config

  let l:config.plugin_root_dir = expand('$HOME', 1) . '/.vim/vim-addons'
  let l:config.log_to_buf = 1
  let l:config.auto_install = 0

  let &rtp .= (empty(&rtp) ? '' : ',') .
        \ l:config.plugin_root_dir .
        \ '/vim-addon-manager'

  if !isdirectory(l:config.plugin_root_dir . '/vim-addon-manager/autoload')
    execute '!git clone --depth=1 https://github.com/MarcWeber/vim-addon-manager '
          \ shellescape(l:config.plugin_root_dir . '/vim-addon-manager', 1)
  endif

  call vam#ActivateAddons([], {})
endfunction " }}}

call SetupVAM()

" Activate addons
source $HOME/.vim/addons.vim

""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""

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

set background=dark

" Set theme based on iterm profile
try
  if $ITERM_PROFILE == ''
    throw "Not in iterm"
  endif

  colorscheme $ITERM_PROFILE
catch
  colorscheme jellybeans
endtry

if has("gui_running")
  set guioptions=Aem
endif

set wildmenu
set number
set relativenumber
set ruler
set showcmd
set title
set noshowmode
set scrolloff=4

set laststatus=2

set conceallevel=2
set concealcursor=nc

set fillchars=

set textwidth=80
set colorcolumn=+1

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

""""""""""""""""""""""""""""""""""""""""
" Local settings
""""""""""""""""""""""""""""""""""""""""

" Enable per-directory vimrc file
set exrc

" Disable unsecure commands in local vimrc files
set secure

" Keep this at the bottom
set shellcmdflag=-c
