" Cursor support for terminals
" ============================
"
" Defaulting vertical line for insert mode and block for other modes.

" TODO: Support for gnome-terminal and xterm

" GUI environments don't require any action.
if has("gui_running")
  finish
endif

" Environments are additive so we store the current escape sequences in temp
" vars.
let s:si=''
let s:ei=''

" iTerm
" -----

" iTerm escape sequence for cursor shape is:
"
"   \<Esc>]50;CursorShape={N}\x7
"
" Where {N} is:
"  - 0 for block
"  - 1 for vertical bar
"  - 2 for underline
"
" Reference:
"   https://code.google.com/p/iterm2/wiki/ProprietaryEscapeCodes#Set_cursor_shape
if exists('$ITERM_PROFILE')
  let s:si="\<Esc>]50;CursorShape=1\x7"
  let s:ei="\<Esc>]50;CursorShape=0\x7"
endif

" OS X Terminal
" -------------
"
" Inspired by: http://www.damtp.cam.ac.uk/user/rbw/vim-osx-cursor.html
"
" Simulate cursor shapes by highlighting the current character in normal mode.
" Terminal cursor must be set to 'Vertical line'.
"
" FIXME:
"  - Cursor in empty lines are not highlighted
"  - Match parenthesis have precedence over cursor highlight
if $TERM_PROGRAM == 'Apple_Terminal'
  " Turn 'cursorline' on to update cursor regularly
  set cursorline

  " Enable Cursor highlight for term
  highlight Cursor cterm=reverse

  " Un-highlight cursor for unfocused buffers and insert mode
  autocmd WinLeave,InsertEnter * match none /\%#/

  " Highlight cursor position in other modes only for focused windows
  autocmd BufEnter,WinEnter,InsertLeave * match Cursor /\%#/
endif

" tmux
" ----
"
" tmux captures escape sequences sent from vim, so we need to forward them to
" the emulator.
if exists('$TMUX') && s:si != '' && s:ei != ''
  let s:si="\<Esc>Ptmux;\<Esc>".s:si."\<Esc>\\"
  let s:ei="\<Esc>Ptmux;\<Esc>".s:ei."\<Esc>\\"
endif

" Use escape sequencess if they where declared.
if s:si != '' && s:ei != ''
  let &t_SI=s:si
  let &t_EI=s:ei
endif
