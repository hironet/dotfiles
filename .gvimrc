if has("mac")
  set lines=58
  set columns=120
elseif has("win32")
  set guifont=MS_Gothic:h10
  set guifontwide=MS_Gothic:h10
  set lines=53
  set columns=100
  autocmd GUIEnter * set transparency=220
  autocmd FocusGained * set transparency=220
  autocmd FocusLost * set transparency=128
  colorscheme molokai
endif

set showtabline=2
