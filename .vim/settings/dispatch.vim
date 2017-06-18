if has('autocmd')
  autocmd FileType elixir let b:dispatch = 'elixir %'
  autocmd FileType ruby let b:dispatch = 'ruby %'
endif
