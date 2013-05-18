" Show hardtabs and trailing spaces
set list
set listchars=tab:→\ ,trail:.
hi SpecialKey term=bold cterm=NONE ctermbg=NONE ctermfg=DarkGrey gui=NONE guibg=NONE guifg=DarkGrey

" Remove trailing white spaces
autocmd BufWritePre * :%s/\s\+$//e
