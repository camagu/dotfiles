function! multitap#Tap(option, ...) " {{{
  call option#Toggle(a:option)
  call s:displayOption(a:option)
endfunction " }}}

function! s:displayOption(option) " {{{
  call s:displayOptions([a:option])
endfunction " }}}

function! s:displayOptions(options) " {{{
  echo 'tap: ' . join(map(copy(a:options), 'v:val . "=" . option#Get(v:val)' ))
endfunction " }}}
