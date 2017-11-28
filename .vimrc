if &compatible
  set nocompatible
endif

if has('win64') || has('win32')
  let s:dein_dir = 'C:\bin\dein'
  let s:dein_repo_dir = s:dein_dir . '\repos\github.com\Shougo\dein.vim'
else
  let s:dein_dir = expand('~/.cache/dein')
  let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
endif

if !isdirectory(s:dein_repo_dir)
  call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
endif
let &runtimepath = s:dein_repo_dir .",". &runtimepath

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  call dein#add(s:dein_repo_dir)
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#add('tomasr/molokai')
  call dein#add('scrooloose/nerdtree')
  call dein#add('Yggdroot/indentLine')
  call dein#add('tpope/vim-endwise')

  " for Markdown
  call dein#add('kannokanno/previm')
  call dein#add('tyru/open-browser.vim')

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

set autoindent
set clipboard=unnamed
set encoding=utf-8
set expandtab
set fileencoding=utf-8
set formatoptions=q
set laststatus=2
set number
set nobackup
set noswapfile
set noundofile
set nowrapscan
set statusline=%<%f\ %m%r%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l/%L,%v
set tw=0

" for scrooloose/nerdtree
nnoremap <silent><C-e> :NERDTreeToggle<CR>

" for tyru/open-browser.vim
nnoremap <silent><C-m> :PrevimOpen<CR>

" for Yggdroot/indentLine
let g:indentLine_setColors = 100

colorscheme molokai
filetype plugin indent on
syntax enable
