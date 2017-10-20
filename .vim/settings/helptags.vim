" Extracted from https://github.com/tpope/vim-pathogen
" For license info see :help license

" \ on Windows unless shellslash is set, / everywhere else.
function! helptags#slash() abort
  return !exists("+shellslash") || &shellslash ? '/' : '\'
endfunction

" Backport of fnameescape().
function! helptags#fnameescape(string) abort
  if exists('*fnameescape')
    return fnameescape(a:string)
  elseif a:string ==# '-'
    return '\-'
  else
    return substitute(escape(a:string," \t\n*?[{`$\\%#'\"|!<"),'^[+>]','\\&','')
  endif
endfunction

" Split a path into a list.
function! helptags#split(path) abort
  if type(a:path) == type([]) | return a:path | endif
  if empty(a:path) | return [] | endif
  let split = split(a:path,'\\\@<!\%(\\\\\)*\zs,')
  return map(split,'substitute(v:val,''\\\([\\,]\)'',''\1'',"g")')
endfunction

" Invoke :helptags on all non-$VIM doc directories in runtimepath.
function! helptags#helptags() abort
  let sep = helptags#slash()
  for glob in helptags#split(&rtp)
    for dir in map(split(glob(glob), "\n"), 'v:val.sep."/doc/".sep')
      if (dir)[0 : strlen($VIMRUNTIME)] !=# $VIMRUNTIME.sep && filewritable(dir) == 2 && !empty(split(glob(dir.'*.txt'))) && (!filereadable(dir.'tags') || filewritable(dir.'tags'))
        silent! execute 'helptags' helptags#fnameescape(dir)
      endif
    endfor
  endfor
endfunction

if has('autocmd')
  autocmd VimEnter * call helptags#helptags()
endif
