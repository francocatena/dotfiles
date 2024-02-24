if has('autocmd')
  autocmd Filetype elixir setlocal formatprg=mix\ format\ -
endif

# TODO: check if this is still needed once in a while
au BufRead,BufNewFile *.eex,*.heex,*.leex,*.sface,*.lexs set filetype=eelixir
