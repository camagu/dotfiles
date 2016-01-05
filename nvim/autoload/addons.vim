function! addons#updateStale() " {{{
  let l:touched_file = expand('$HOME/.vim-addons.touch')
  let l:updated_at = getftime(l:touched_file)
  let l:eight_days_ago = localtime() - 8 * 24 * 60 * 60

  if l:updated_at == -1 || l:updated_at < l:eight_days_ago
    if confirm( "Do\ you\ wish\ to\ update\ the\ addons?", "&yes\n&no") == 1
      UpdateActivatedAddons
      execute system('touch -m ' . l:touched_file)
    endif
  endif
endfunction " }}}
