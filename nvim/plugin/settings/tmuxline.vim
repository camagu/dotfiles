" tmuxline settings
" =================

" Disbale separators
let g:tmuxline_powerline_separators = 0

" Status line is miniml and looks like this:
"   | session > 1. Win name > ... < CPU Usage |
let g:tmuxline_preset = {
  \'a'    : '#S',
  \'win'  : '#I:#W',
  \'cwin' : '#I:#W',
  \'options': {
    \'status-justify': 'left'
    \}
  \}

" CPU an memory usage segment requires
"   https://github.com/thewtex/tmux-mem-cpu-load
if executable('tmux-mem-cpu-load')
  let g:tmuxline_preset.x = '#(tmux-mem-cpu-load 2)'
endif
