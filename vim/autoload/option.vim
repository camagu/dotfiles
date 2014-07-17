function! option#Toggle(option) " {{{
  execute "silent! set " . a:option . "!"
endfunction " }}}

