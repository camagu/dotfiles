call plug#begin()

" Color schemas {{{
Plug 'goatslacker/mango.vim'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'nanotech/jellybeans.vim'
Plug 'notpratheek/vim-luna'
" }}}

" Git and PM " {{{
Plug 'jaxbot/github-issues.vim'
Plug 'tpope/vim-fugitive'
" }}}

" Langs {{{

" Git {{{
Plug 'tpope/vim-git'
" }}}

" HTML, HTML engines and HTML preprocessors {{{
Plug 'digitaltoad/vim-jade'
Plug 'estin/htmljinja'
Plug 'johnhamelink/blade.vim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'othree/html5.vim'
Plug 'slim-template/vim-slim'
Plug 'tpope/vim-haml'
" }}}

" JS and JS preprocessors {{{
Plug 'kchmck/vim-coffee-script'
Plug 'pangloss/vim-javascript'
" }}}

" JSON {{{
Plug 'elzr/vim-json'
" }}}

" CSS and CSS preprocessors {{{
Plug 'ap/vim-css-color'
Plug 'cakebaker/scss-syntax.vim'
Plug 'groenewege/vim-less'
Plug 'hail2u/vim-css3-syntax'
Plug 'wavded/vim-stylus'
" }}}

" Ruby and Rails related {{{
Plug 'ecomba/vim-ruby-refactoring'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-cucumber'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
" }}}

" Plain text processors {{{
Plug 'timcharper/textile.vim'
Plug 'tpope/vim-markdown'
Plug 'aklt/plantuml-syntax'
" }}}

" }}}

" General purpose {{{

" Navigation {{{
Plug 'ctrlpvim/ctrlp.vim'
Plug 'eiginn/netrw'
Plug 'jeetsukumaran/vim-buffergator'
" }}}

" Text utilities {{{
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kana/vim-textobj-user'
Plug 'scrooloose/nerdcommenter'
Plug 'terryma/vim-multiple-cursors'
Plug 'tmhedberg/matchit'
Plug 'tpope/vim-surround'
" }}}

" Syntaxis checkers {{{
Plug 'benekastah/neomake'
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
"Plug 'xolox/vim-easytags'
"Plug 'xolox/vim-misc'
" }}}

" }}}

call plug#end()
