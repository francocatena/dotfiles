let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ] ]
      \ },
      \ 'component_function': {
      \   'fugitive': 'FugitiveStatus',
      \   'readonly': 'ReadonlyStatus',
      \   'modified': 'ModifiedStatus',
      \   'filename': 'FilenameStatus'
      \ },
      \ }

function! ModifiedStatus()
  if &filetype == 'help'
    return ''
  elseif &modified
    return '+'
  elseif &modifiable
    return ''
  else
    return ''
  endif
endfunction

function! ReadonlyStatus()
  if &filetype == 'help'
    return ''
  elseif &readonly
    return '⭤'
  else
    return ''
  endif
endfunction

function! FugitiveStatus()
  return exists('*FugitiveHead') ? FugitiveHead() : ''
endfunction

function! FilenameStatus()
  return ('' != ReadonlyStatus() ? ReadonlyStatus() . ' ' : '') .
       \ ('' != expand('%:P') ? expand('%:P') : '[No Name]') .
       \ ('' != ModifiedStatus() ? ' ' . ModifiedStatus() : '')
endfunction
