" Use context completion type:
"
"   /usr/l<tab>     # will use filename completion
"   myvar.t<tab>    # will use user completion if completefunc set,
"                   # or omni completion if omnifunc set.
"   myvar-><tab>    # same as above
"
" And fallback to <c-p>
"let g:SuperTabDefaultCompletionType = "context" " context
"let g:SuperTabContextDefaultCompletionType = "<c-p>"

" Reset compeltion type after each completion (default is insert)
"let g:SuperTabRetainCompletionDuration = 'completion'

" Complete longest match
"let g:SuperTabLongestEnhanced = 1

" Hightlight longest match
"let g:SuperTabLongestHighlight = 1

" Close preview when done
"let g:SuperTabClosePreviewOnPopupClose = 1
