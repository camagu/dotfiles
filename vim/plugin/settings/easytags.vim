" Create and update tags file relative to project root
let g:easytags_dynamic_files = 2

" Use ripper-tags for ruby files (if available)
"   Install: gem install ripper-tags
if executable('ripper-tags')
  let g:easytags_languages = {'ruby': {'cmd': 'ripper-tags'}}
endif
