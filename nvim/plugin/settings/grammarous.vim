" Use global executable if available {{{
if executable('languagetool')
  let g:grammarous#languagetool_cmd = 'languagetool'
endif
" }}}

" Enable spell check when running grammar check {{{
let g:grammarous#enable_spell_check = 1
" }}}

" Check only comments for code files, all for text files {{{
let g:grammarous#default_comments_only_filetypes = {
      \ '*' : 1,
      \ 'help' : 0,
      \ 'gitcommit' : 0,
      \ 'markdown' : 0,
      \ 'text' : 0,
      \ }
" }}}
