function! option#Get(option) " {{{
  execute "let l:value = &" . a:option
  return l:value
endfunction " }}}

function! option#Set(option, value) " {{{
  execute "silent! set " . a:option . "=" . a:value
endfunction " }}}

function! option#Toggle(option) " {{{
  execute "silent! set " . a:option . "!"
endfunction " }}}

