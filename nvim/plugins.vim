call plug#begin()

" Color schemas {{{
Plug 'KKPMW/distilled-vim'
" }}}

" Git and PM " {{{
Plug 'jaxbot/github-issues.vim'
Plug 'tpope/vim-fugitive'
" }}}

" Langs {{{
Plug 'sheerun/vim-polyglot'

" CSS {{{
Plug 'ap/vim-css-color'
" }}}

" }}}

" General purpose {{{

" Navigation {{{
Plug 'ctrlpvim/ctrlp.vim'
Plug 'eiginn/netrw'
Plug 'jeetsukumaran/vim-buffergator'
" }}}

" Text utilities {{{
Plug 'kana/vim-textobj-user'
Plug 'rhysd/vim-grammarous'
Plug 'scrooloose/nerdcommenter'
Plug 'terryma/vim-multiple-cursors'
Plug 'tmhedberg/matchit'
Plug 'tpope/vim-surround'
" }}}

" Completion {{{
Plug 'autozimu/LanguageClient-neovim', {
      \ 'branch': 'next',
      \ 'do': 'bash install.sh && npm install -g flow-language-server javascript-typescript-langserver',
      \ }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" }}}

" Syntaxis checkers and formatters {{{
Plug 'w0rp/ale'
" }}}

" User Interface {{{
Plug 'tpope/vim-vinegar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" }}}

" Misc {{{
Plug 'tpope/vim-dispatch'

" Required by autoload/multitap.vim
Plug 'vim-scripts/ConvertBase.vim'

Plug 'vim-scripts/Rename'
" }}}

" }}}

call plug#end()
