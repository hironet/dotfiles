if &compatible
  set nocompatible
endif

set nobackup
set noswapfile
set noundofile

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
augroup fileTypeIndent
  autocmd!
  autocmd BufNewFile,BufRead *.rb setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END

set encoding=utf-8
set fileencoding=utf-8
if has("win32")
  set fileformat=dos
  set fileformats=dos,unix,mac
else
  set fileformat=unix
  set fileformats=unix,mac,dos
endif

set textwidth=0
set formatoptions=q

set number
set laststatus=2
set statusline=%<%f\ %m%r%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l/%L,%v

set ignorecase
set nowrapscan
set clipboard=unnamed

colorscheme evening
filetype plugin indent on
syntax enable
