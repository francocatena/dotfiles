let g:elm_format_autosave = 1
let g:elm_setup_keybindings = 0

if has('autocmd')
  autocmd Filetype elm setlocal tabstop=4 shiftwidth=4 softtabstop=0
endif
