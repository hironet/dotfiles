if has("mac")
  set lines=58
  set columns=120
elseif has("win32")
  set guifont=MS_Gothic:h10
  set guifontwide=MS_Gothic:h10
  set lines=53
  set columns=100
  autocmd GUIEnter * set transparency=230
  colorscheme molokai
endif

set showtabline=2
