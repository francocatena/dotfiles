function! PackInit() abort
  packadd minpac

  if !exists('g:loaded_minpac')
    finish
  endif

  call minpac#init()

  " Minpac managed by minpac =)
  " call minpac#add('k-takata/minpac', {'type': 'opt'})

  " UI
  call minpac#add('itchyny/lightline.vim')
  call minpac#add('altercation/vim-colors-solarized')

  " General enhancements
  call minpac#add('tpope/vim-abolish')
  call minpac#add('tpope/vim-commentary')
  call minpac#add('tpope/vim-dispatch')
  call minpac#add('tpope/vim-endwise')
  call minpac#add('tpope/vim-eunuch')
  call minpac#add('tpope/vim-fugitive')
  call minpac#add('tpope/vim-rhubarb')
  call minpac#add('tpope/vim-git')
  call minpac#add('tpope/vim-haystack')
  call minpac#add('tpope/vim-projectionist')
  call minpac#add('tpope/vim-repeat')
  call minpac#add('tpope/vim-surround')
  call minpac#add('tpope/vim-vinegar')
  call minpac#add('AndrewRadev/splitjoin.vim')
  call minpac#add('godlygeek/tabular')
  call minpac#add('Townk/vim-autoclose')
  call minpac#add('SirVer/ultisnips')
  call minpac#add('honza/vim-snippets')
  call minpac#add('szw/vim-tags')
  call minpac#add('nelstrom/vim-visual-star-search')
  call minpac#add('machakann/vim-highlightedyank')

  " Elixir
  call minpac#add('elixir-editors/vim-elixir')

  " Elm
  call minpac#add('ElmCast/elm-vim')

  " Ruby / Rails
  call minpac#add('tpope/vim-bundler')
  call minpac#add('tpope/vim-rails')
  call minpac#add('tpope/vim-rake')
  call minpac#add('vim-ruby/vim-ruby')

  " JavaScript
  call minpac#add('pangloss/vim-javascript')
  call minpac#add('maxmellon/vim-jsx-pretty')

  " Jsonnet
  call minpac#add('google/vim-jsonnet')

  " Working with GitHubGist
  call minpac#add('mattn/webapi-vim')
  call minpac#add('mattn/gist-vim')

  " Terraform
  call minpac#add('hashivim/vim-terraform')
endfunction

command! PackUpdate call PackInit() | call minpac#update()
command! PackClean  call PackInit() | call minpac#clean()
command! PackStatus packadd minpac | call minpac#status()
