set nocompatible

" ----------------------------------------------------------------------
" NeoBundle

filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

filetype plugin on
filetype indent on

NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'altercation/vim-colors-solarized'

" ----------------------------------------------------------------------

" シンタックスハイライトを有効にする "
syntax on

" カラースキームを設定する "
colorscheme hybrid

" ステータスラインにファイル名、文字コード、改行コードを表示する "
set statusline=%<%f\ %m%r%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l/%L,%v

" 行番号を表示する "
set number

" 検索時にファイルの最後まで行っても最初に戻らない "
set nowrapscan

" 自動改行しない "
set tw=0
set formatoptions=q

" クリップボードを使う "
set clipboard=unnamed

" バックアップファイルを作らない "
set nobackup

" スワップファイルを作らない "
set noswapfile
