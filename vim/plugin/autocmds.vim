if has("gui_running") == 0
  " NOTE: Only apply to vshell vim since gui vim handles it automatically
  augroup reload_changed_files " {{{
    autocmd!

    " Prompts to reload file if changed exernally
    autocmd BufEnter,CursorHold,CursorHoldI,CursorMoved,CursorMovedI * checktime
  augroup END " }}}
end

augroup whitespaces " {{{
  autocmd!

  " Remove trailing white spaces
  autocmd BufWritePre * :%s/\s\+$//e

  " Remove extra blank lines
  autocmd BufWritePre * :%s/\n\n\n\+/\r\r/e
augroup END " }}}
