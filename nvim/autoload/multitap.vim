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

function! multitap#Multitap(...) " {{{
  " Guard {{{
  if a:0 < 2
    throw "At least two options should be defined"
  endif
  " }}}

  let l:options = a:000

  let l:values = join(map(copy(l:options), 'option#Get(v:val)'), '')
  let l:max_values = join(map(copy(l:options), '1'), '')

  let l:new_values = s:incrementBinary(l:values)
  if len(l:new_values) > len(l:max_values)
    let l:new_values = 0
  endif

  let l:new_values = s:zeroFill(l:new_values, len(l:max_values))

  let l:options_values = s:zip(l:options, l:new_values)
  for [l:option, l:value] in items(l:options_values)
    call option#Switch(l:option, l:value)
  endfor

  call s:displayOptions(l:options)
endfunction " }}}

function! s:displayOption(option) " {{{
  call s:displayOptions([a:option])
endfunction " }}}

function! s:displayOptions(options) " {{{
  echo 'tap: ' . join(map(copy(a:options), 'v:val . "=" . option#Get(v:val)' ))
endfunction " }}}

function! s:zeroFill(str, length) " {{{
  let l:str = a:str

  while len(l:str) < a:length
    let l:str = '0' . l:str
  endwhile

  return l:str
endfunction " }}}

function! s:zip(keys, values) " {{{
  let l:dict = {}

  let l:i = 0
  while l:i < len(a:keys)
    let l:dict[a:keys[l:i]] = a:values[l:i]
    let l:i += 1
  endwhile

  return l:dict
endfunction " }}}

function! s:incrementBinary(b) " {{{
  let l:d = ConvertFromBase(a:b, 2) + 1
  return ConvertToBase(l:d, 2)
endfunction " }}}
