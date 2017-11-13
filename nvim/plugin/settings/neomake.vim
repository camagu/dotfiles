if has('mac') " {{{
  let g:neomake_error_sign = {
        \ 'text': '😡',
        \ 'texthl': 'SignColumn',
        \ }
  let g:neomake_warning_sign = {
        \ 'text': '😠',
        \ 'texthl': 'SignColumn',
        \ }
endif " }}}

call neomake#configure#automake('nw', 750)


