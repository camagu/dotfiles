""""""""""""""""""""""""""""""""""""""""
" Navigation keymaps
""""""""""""""""""""""""""""""""""""""""

" Split windows navigation
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Tabs navigation
nnoremap <C-M-j> :tabprevious<CR>
nnoremap <C-M-k> :tabnext<CR>
inoremap <C-M-j> <Esc>:tabprevious<CR>i
inoremap <C-M-k> <Esc>:tabnext<CR>i

""""""""""""""""""""""""""""""""""""""""
" Plugins keymaps
""""""""""""""""""""""""""""""""""""""""

" tree
map <silent> <leader>t :NERDTreeTabsToggle<CR>

" buffer
map <silent> <leader>b :BuffergatorToggle<CR>

" find
map <silent> <leader>f :CtrlP .<CR>
