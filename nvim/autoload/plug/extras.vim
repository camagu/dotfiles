function! plug#extras#autoInstall() " {{{
  if !filereadable(expand('~/.config/nvim/autoload/plug.vim')) " {{{
    execute '!curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs ' .
          \ 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    source ~/.config/nvim/autoload/plug.vim
  endif " }}}
endfunction " }}}

function! plug#extras#checkUpdates() " {{{
  let l:touched_file = expand('$HOME/.vim-plug.touch')
  let l:updated_at = getftime(l:touched_file)
  let l:eight_days_ago = localtime() - 8 * 24 * 60 * 60

  if l:updated_at == -1 || l:updated_at < l:eight_days_ago
    if confirm("Do\ you\ wish\ to\ update\ the\ plugins?", "&yes\n&no") == 1
      PlugUpgrade
      PlugUpdate
      execute system('touch -m ' . l:touched_file)
    endif
  endif
endfunction " }}}
