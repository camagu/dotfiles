function! togglefoldmethod#disable() " {{{
  if !exists('w:last_fdm')
    let w:last_fdm=&foldmethod
    setlocal foldmethod=manual
  endif
endfunction " }}}

function! togglefoldmethod#restore() " {{{
  if exists('w:last_fdm')
    let &l:foldmethod=w:last_fdm
    unlet w:last_fdm
  endif
endfunction " }}}
