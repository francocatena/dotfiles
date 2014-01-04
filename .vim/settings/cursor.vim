if has('autocmd')
  filetype plugin indent on
  augroup vimrcEx
    autocmd!
    " Remember last position in file
    autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal g`\"" |
      \ endif
  augroup END
endif
