" Remove trailing white spaces
autocmd BufWritePre * :%s/\s\+$//e

" Remove extra blank lines
autocmd BufWritePre * :%s/\n\n\n\+/\r\r/e

