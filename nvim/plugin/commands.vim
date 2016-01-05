" Create parent folders and save
" NOTE: Calling `redraw!` to avoid glitches
command W call mkdir(expand('%:h'), 'p') | write | redraw!
