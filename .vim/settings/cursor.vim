if has('autocmd')
  filetype plugin indent on
  augroup lastCursorPosition
    autocmd!
    " Remember last cursor position in file
    autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal g`\"" |
      \ endif
  augroup END
endif
