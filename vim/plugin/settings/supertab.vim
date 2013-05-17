let g:SuperTabDefaultCompletionType = "context" " context
let g:SuperTabContextDefaultCompletionType = "<c-p>"

let g:SuperTabCompletionContexts = ['s:ContextText'] " s:ContextDiscover 

" ContextText

" g:SuperTabContextTextFileTypeExclusions
" g:SuperTabContextTextOmniPrecedence

" ContextDiscovery
" g:SuperTabContextDiscoverDiscovery

let g:SuperTabRetainCompletionDuration = 'insert'

let g:SuperTabNoCompleteBefore = []
let g:SuperTabNoCompleteBefore = ['^', '\s']

let g:SuperTabMappingForward = '<tab>'
let g:SuperTabMappingBackward = '<s-tab>'

let g:SuperTabMappingTabLiteral = '<c-tab>'

let g:SuperTabLongestEnhanced = 1
let g:SuperTabLongestHighlight = 1

let g:SuperTabCrMapping = 1
let g:SuperTabClosePreviewOnPopupClose = 1

