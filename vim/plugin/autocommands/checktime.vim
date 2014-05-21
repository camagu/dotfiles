" Prompts to reload file if changed exernally.

" Only apply to vshell vim since gui vim handles it automatically
if has("gui_running") == 0
  autocmd BufEnter,CursorHold,CursorHoldI,CursorMoved,CursorMovedI * checktime
end
