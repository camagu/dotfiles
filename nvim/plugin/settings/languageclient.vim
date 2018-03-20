let g:LanguageClient_serverCommands = {}

" Javascript language server settings " {{{

" Use flow server if available and project uses flow {{{
if !empty(glob(".flowconfig")) && executable('flow-language-server')
  let javascript_language_server = ['flow-language-server', '--stdio']
" }}}

" Use javascript/typescript language server if it's a js project {{{
elseif !empty(glob("package.json")) && executable('javascript-typescript-stdio')
  let javascript_language_server = ['javascript-typescript-stdio']
endif
" }}}

if exists('javascript_language_server')
  let g:LanguageClient_serverCommands['javascript'] = javascript_language_server
  let g:LanguageClient_serverCommands['javascript.jsx'] = javascript_language_server
endif

" }}}

" Typescript language server settings {{{

if !empty(glob("tsconfig.json")) && executable('javascript-typescript-stdio')
  let g:LanguageClient_serverCommands['typescript'] = javascript_language_server
endif

" }}}

let g:LanguageClient_autoStart = 1
let g:LanguageClient_diagnosticsEnable = 0
