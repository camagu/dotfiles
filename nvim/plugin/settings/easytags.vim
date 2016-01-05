" Create and update tags file relative to project root
let g:easytags_dynamic_files = 2

" Highlight is arbitrary in dynamic languages
let g:easytags_auto_highlight=0

" Use ripper-tags for ruby files (if available)
"   Install: gem install ripper-tags
if executable('ripper-tags')
  let g:easytags_languages = {'ruby': {'cmd': 'ripper-tags'}}
endif

" NOTE: easytags is causing glitches in term, using default settings to
" troubleshoot problem.
finish

" Prevent easytags from auto updating and highlighting since it causes
" glithces in terminal interfaces
let g:easytags_auto_update=0
let g:easytags_auto_highlight=0

" FIXME modifying g:easytags_events doesn't have the expected behavior,
" calling autocommand directy to update and highight tags on saving and
" reading
function EasyTagsUpdate()
  if !empty(xolox#easytags#select_supported_filetypes(&ft))
    UpdateTags
    "HighlightTags
  endif
endfunction
"autocmd BufWritePost,BufReadPost * call EasyTagsUpdate()
