" Fold settings
"
" - Set better fold method for file type
" - Keep fold text minimal

"Common settings {{{
set foldcolumn=0
" }}}

function! SetupDefaultFold() " {{{
  setlocal foldmethod=syntax

  " Show text
  setlocal foldtext=getline(v:foldstart)
endfunction " }}}

function! SetupVimFold() " {{{
  setlocal foldmethod=marker

  " Remove marker and comments characters
  setlocal foldtext=substitute(getline(v:foldstart),'{{{','','g') "}}}
endfunction " }}}

augroup folding " {{{
  autocmd!

  " Set different fold settings depending on the filetype
  autocmd BufNewFile,BufRead *     execute SetupDefaultFold()
  autocmd BufNewFile,BufRead *.vim execute SetupVimFold()
augroup END " }}}
