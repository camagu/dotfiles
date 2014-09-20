" Vim addons to activate using VAM
"
" SEE: https://github.com/MarcWeber/vim-addon-manager
" NOTE: 'github:.*' format is preferred over registered plugin names for several
" reasons:
"
" - Not all plugins are available in VAM's repo
" - Names are not mapped to their repo names which makes hard to find the
"   right one and to know if it's available
" - Using the Github repo name makes finding the repo easier than using a
"   cryptic name

let s:scripts = []

" Color schemas {{{
call add(s:scripts, {'name': 'github:chriskempson/vim-tomorrow-theme'})
call add(s:scripts, {'name': 'github:goatslacker/mango.vim'})
call add(s:scripts, {'name': 'github:nanotech/jellybeans.vim'})
" }}}

" Langs {{{

" Git {{{
call add(s:scripts, {'name': 'github:tpope/vim-fugitive'})
call add(s:scripts, {'name': 'github:tpope/vim-git'})
" }}}

" HTML, HTML engines and HTML preprocessors {{{
call add(s:scripts, {'name': 'github:digitaltoad/vim-jade'})
call add(s:scripts, {'name': 'github:estin/htmljinja'})
call add(s:scripts, {'name': 'github:johnhamelink/blade.vim'})
call add(s:scripts, {'name': 'github:mustache/vim-mustache-handlebars'})
call add(s:scripts, {'name': 'github:othree/html5.vim'})
call add(s:scripts, {'name': 'github:slim-template/vim-slim'})
call add(s:scripts, {'name': 'github:tpope/vim-haml'})
" }}}

" JS and JS preprocessors {{{
call add(s:scripts, {'name': 'github:kchmck/vim-coffee-script'})
call add(s:scripts, {'name': 'github:pangloss/vim-javascript'})
" }}}

" JSON {{{
call add(s:scripts, {'name': 'github:elzr/vim-json'})
" }}}

" CSS and CSS preprocessors {{{
call add(s:scripts, {'name': 'github:cakebaker/scss-syntax.vim'})
call add(s:scripts, {'name': 'github:groenewege/vim-less'})
call add(s:scripts, {'name': 'github:hail2u/vim-css3-syntax'})
call add(s:scripts, {'name': 'github:skammer/vim-css-color'})
call add(s:scripts, {'name': 'github:wavded/vim-stylus'})
" }}}

" Ruby and Rails related {{{
call add(s:scripts, {'name': 'github:ecomba/vim-ruby-refactoring'})
call add(s:scripts, {'name': 'github:nelstrom/vim-textobj-rubyblock'})
call add(s:scripts, {'name': 'github:thoughtbot/vim-rspec'})
call add(s:scripts, {'name': 'github:tpope/vim-bundler'})
call add(s:scripts, {'name': 'github:tpope/vim-cucumber'})
call add(s:scripts, {'name': 'github:tpope/vim-endwise'})
call add(s:scripts, {'name': 'github:tpope/vim-rails'})
call add(s:scripts, {'name': 'github:vim-ruby/vim-ruby'})
" }}}

" Text preprocessors {{{
call add(s:scripts, {'name': 'github:timcharper/textile.vim'})
call add(s:scripts, {'name': 'github:tpope/vim-markdown'})
" }}}

" }}}

" General purpose {{{

" Navigation {{{
call add(s:scripts, {'name': 'github:jeetsukumaran/vim-buffergator'})
call add(s:scripts, {'name': 'github:jistr/vim-nerdtree-tabs'})
call add(s:scripts, {'name': 'github:kien/ctrlp.vim'})
call add(s:scripts, {'name': 'github:scrooloose/nerdtree'})
" }}}

" Text utilities {{{
call add(s:scripts, {'name': 'github:ervandew/supertab'})
call add(s:scripts, {'name': 'github:kana/vim-textobj-user'})
call add(s:scripts, {'name': 'github:scrooloose/nerdcommenter'})
call add(s:scripts, {'name': 'github:terryma/vim-multiple-cursors'})
call add(s:scripts, {'name': 'github:tpope/vim-surround'})
call add(s:scripts, {'name': 'github:vim-scripts/matchit.zip.git'})
" }}}

" Syntaxis checkers {{{
call add(s:scripts, {'name': 'github:scrooloose/syntastic'})
" }}}

" User Interface {{{
call add(s:scripts, {'name': 'github:bling/vim-airline'})
call add(s:scripts, {'name': 'github:edkolev/tmuxline.vim'})
" }}}

" Misc {{{
call add(s:scripts, {'name': 'github:tpope/vim-dispatch'})

" Required by autoload/multitap.vim
call add(s:scripts, {'name': 'github:vim-scripts/ConvertBase.vim'})

call add(s:scripts, {'name': 'github:vim-scripts/Rename'})
call add(s:scripts, {'name': 'github:xolox/vim-easytags'})
call add(s:scripts, {'name': 'github:xolox/vim-misc'})
" }}}

" }}}

" Activate all the addons!
call vam#Scripts(s:scripts, {'tag_regex': '.*'})
