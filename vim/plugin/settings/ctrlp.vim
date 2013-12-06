" Use the silver searcher if available
"   https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use ag in CtrlP for listing files
  let g:ctrlp_user_command='ag %s -l --nocolor -g ""'

  " since it's so fast ther's no need for cache
   let g:ctrlp_us_caching=0
endif
