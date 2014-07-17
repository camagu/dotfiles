function! multitap#Tap(option, ...) " {{{
  let l:values = a:000

  if empty(l:values)
    call option#Toggle(a:option)
    call s:displayOption(a:option)
    return
  endif

  " Use first value if we already tapped through all values or current value is
  " not in the list
  let l:new_value = l:values[0]
  let l:current_value = option#Get(a:option)

  let l:current_value_index = index(l:values, l:current_value)
  if l:current_value_index != -1 && l:current_value_index != len(l:values) - 1
    let l:new_value = l:values[l:current_value_index + 1]
  endif

  call option#Set(a:option, l:new_value)
  call s:displayOption(a:option)
endfunction " }}}

function! s:displayOption(option) " {{{
  call s:displayOptions([a:option])
endfunction " }}}

function! s:displayOptions(options) " {{{
  echo 'tap: ' . join(map(copy(a:options), 'v:val . "=" . option#Get(v:val)' ))
endfunction " }}}
