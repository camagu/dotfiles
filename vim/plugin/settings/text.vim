" Show hardtabs and trailing spaces
set list
set listchars=tab:·\ ,extends:>,precedes:<

" Remove trailing white spaces
autocmd BufWritePre * :%s/\s\+$//e

" Remove extra blank lines
autocmd BufWritePre * :%s/\n\n\n\+/\r\r/e

