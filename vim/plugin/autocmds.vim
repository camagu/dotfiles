augroup update_addons " {{{
  autocmd!

  autocmd VimEnter * execute addons#updateStale()
augroup END " }}}

if has("gui_running") == 0 " {{{
  " NOTE: Only apply to vshell vim since gui vim handles it automatically
  augroup reload_changed_files " {{{
    autocmd!

    " Prompts to reload file if changed exernally
    autocmd BufEnter,CursorHold,CursorHoldI,CursorMoved,CursorMovedI * checktime
  augroup END " }}}
endif " }}}

" Don't screw up folds when inserting text that might affect them, until
 " leaving insert mode. Foldmethod is local to the window. Protect against
 " screwing up folding when switching between windows.
augroup disable_folding_on_insert_mode
  autocmd!

  autocmd InsertEnter * call togglefoldmethod#disable()
  autocmd InsertLeave,WinLeave * call togglefoldmethod#restore()
augroup END

augroup whitespaces " {{{
  autocmd!

  " Remove trailing white spaces
  autocmd BufWritePre * :%s/\s\+$//e

  " Remove extra blank lines
  autocmd BufWritePre * :%s/\n\n\n\+/\r\r/e
augroup END " }}}

augroup refresh_ui " {{{
  autocmd CursorHold * :silent! redraw!
augroup END " }}}
