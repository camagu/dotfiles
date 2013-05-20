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
"
" <leader>n NERDTree
" <leader>b BufferGator
" <leader>t CommandT
""""""""""""""""""""""""""""""""""""""""
map <leader>n :NERDTreeTabsToggle<CR>
map <leader>b :BuffergatorToggle<CR>
map <leader>t :CommandT<CR>

