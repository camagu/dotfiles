" Use js local executable for makers if available {{{
"
" Defined in `ftplugin` to avoid running checks for non-js projects.

" Check once per session {{{
if exists('s:checked_executables')
  finish
endif
let s:checked_executable=1
" }}}

" Abort if defined by user {{{
if exists('g:neomake_javascript_enabled_makers')
  finish
endif
" }}}

let g:neomake_javascript_enabled_makers = []

" Available makers as in
" https://github.com/neomake/neomake/blob/06cd1ac39f5cbd403e92732bce7e8ae66ded1fcd/autoload/neomake/makers/ft/javascript.vim
let makers = [
      \'xo',
      \'standard',
      \'semistandard',
      \'eslint_d',
      \'eslint',
      \'flow',
      \'jshint',
      \'jscs'
      \]

" Find and set local makers {{{
for maker in makers
  " skip eslint {{{
  if maker == 'eslint'
    continue
  endif
  " }}}

  let maker_exe = './node_modules/.bin/' . maker
  if !empty(glob(maker_exe))
    execute 'let g:neomake_javascript_' . maker . '_exe="' . maker_exe . '"'
    call add(g:neomake_javascript_enabled_makers, maker)
  endif
endfor
" }}}

" eslint {{{

" Following makers use eslint in the background, so it doesn't make sense to use
" eslint as well
if !empty(glob('./node_modules/.bin/eslint')) &&
      \index(g:neomake_javascript_enabled_makers, 'xo') == -1 &&
      \index(g:neomake_javascript_enabled_makers, 'standard') == -1 &&
      \index(g:neomake_javascript_enabled_makers, 'semistandard') == -1 &&
      \index(g:neomake_javascript_enabled_makers, 'eslint_d') == -1

  let g:neomake_javascript_eslint_exe = './node_modules/.bin/eslint'
  call add(g:neomake_javascript_enabled_makers, 'eslint')
endif
" }}}
" }}}

" Find and use single global maker {{{
if len(g:neomake_javascript_enabled_makers) == 0
  " Use first available
  for maker in makers
    if executable(maker)
      call add(g:neomake_javascript_enabled_makers, maker)
      break
    endif
  endfor
endif
" }}}
