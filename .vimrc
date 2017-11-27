if &compatible
  set nocompatible
endif

let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

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
  call dein#add('nathanaelkane/vim-indent-guides')
  call dein#add('scrooloose/nerdtree')
  call dein#add('tomasr/molokai')
  call dein#add('tpope/vim-endwise')

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

" for nathanaelkane/vim-indent-guides 
let g:indent_guides_enable_on_vim_startup = 1

" for scrooloose/nerdtree
nnoremap <silent><C-e> :NERDTreeToggle<CR>

colorscheme molokai
filetype plugin indent on
syntax enable
