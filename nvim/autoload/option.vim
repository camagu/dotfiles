function! option#Get(option) " {{{
  execute "let l:value = &" . a:option
  return l:value
endfunction " }}}

function! option#Set(option, value) " {{{
  execute "silent! set " . a:option . "=" . a:value
endfunction " }}}

function! option#Toggle(option) " {{{
  execute "silent! set " . a:option . "!"
endfunction " }}}

function! option#Switch(option, state) " {{{
  if a:state
    call option#Enable(a:option)
  else
    call option#Disable(a:option)
  endif
endfunction " }}}

function! option#Enable(option) " {{{
  execute "silent! set " . a:option
endfunction " }}}

function! option#Disable(option) " {{{
  execute "silent! set no" . a:option
endfunction " }}}
