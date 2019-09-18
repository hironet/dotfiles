if has("win32")
  set guifont=MS_Gothic:h10
  set guifontwide=MS_Gothic:h10
  set lines=99999
  set columns=100
  autocmd GUIEnter * set transparency=230
  colorscheme molokai
elseif has("mac")
  set lines=58
  set columns=120
endif

set showtabline=2
set guioptions-=T
