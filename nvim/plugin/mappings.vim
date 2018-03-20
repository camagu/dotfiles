""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""

" Turn search highlight off
nnoremap <silent> <leader><cr> :noh<cr>

" Remap 0 to first non-blank character
nnoremap 0 ^

""""""""""""""""""""""""""""""""""""""""
" Navigation keymaps
""""""""""""""""""""""""""""""""""""""""

" Split windows navigation
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

" Tabs navigation
nnoremap <C-M-j> :tabprevious<CR>
nnoremap <C-M-k> :tabnext<CR>
inoremap <C-M-j> <Esc>:tabprevious<CR>i
inoremap <C-M-k> <Esc>:tabnext<CR>i

""""""""""""""""""""""""""""""""""""""""
" Multi-taps
""""""""""""""""""""""""""""""""""""""""

" (m)argin
nnoremap <silent> <space>m :call multitap#Tap('colorcolumn', '', '+1')<CR>

" (r)uler
nnoremap <silent> <space>r :call multitap#Multitap('relativenumber', 'number')<CR>

" (s)pell
nnoremap <silent> <space>s :call multitap#Tap('spell')<CR>

""""""""""""""""""""""""""""""""""""""""
" Plugins keymaps
""""""""""""""""""""""""""""""""""""""""

" Turn default mappings off
let g:buffergator_suppress_keymaps = 1

" netrw (file expolorer) - (e)xplore
nnoremap <silent> <leader>ee :edit .<CR>
nnoremap <silent> <leader>es :split .<CR>
nnoremap <silent> <leader>ev :vsplit .<CR>
nnoremap <silent> <leader>et :tabe .<CR>

" BufferGator - (b)uffer
nnoremap <silent> <leader>b :BuffergatorToggle<CR>
nnoremap <silent> [b :BuffergatorMruCyclePrev<CR>
nnoremap <silent> ]b :BuffergatorMruCycleNext<CR>

" CtrlP - (f)ind
nnoremap <silent> <leader>f :CtrlP .<CR>

" LanguageClient - (l)anguage
nnoremap <silent> <leader>lh :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> <leader>ld :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <leader>lr :call LanguageClient_textDocument_rename()<CR>

""""""""""""""""""""""""""""""""""""""""
" Custom functionality
""""""""""""""""""""""""""""""""""""""""

" Set %% as current file relative path
cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>
