" Use HTMLHint as defalt maker {{{
"
" Defined in `ftplugin` to avoid running checks for non-html projects.

" Check once per session {{{
if exists('s:checked_maker')
  finish
endif
let s:checked_maker=1
" }}}

" Abort if defined by user {{{
if exists('g:neomake_html_enabled_makers')
  finish
endif
" }}}

let g:neomake_html_enabled_makers = []

" Use local executable if available {{{
let maker_exe = './node_modules/.bin/htmlhint'
if !empty(glob(maker_exe))
  let g:neomake_html_htmlhint_exe=maker_exe
  call add(g:neomake_html_enabled_makers, 'htmlhint')
endif
" }}}

" Use global executable if available {{{
if len(g:neomake_html_enabled_makers) == 0
  if executable('htmlhint')
    let g:neomake_html_htmlhint_exe='htmlhint'
    call add(g:neomake_html_enabled_makers, 'htmlhint')
  endif
endif
" }}}

" }}}
