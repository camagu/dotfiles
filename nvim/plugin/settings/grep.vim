" Use the silver searcher if available
"   https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Search files with the silver searcher
  set grepprg=ag\ --nogroup\ --nocolor
endif
