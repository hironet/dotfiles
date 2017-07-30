set nocompatible

" シンタックスハイライトを有効にする "
syntax on

" バックアップファイルを作らない "
set nobackup

" スワップファイルを作らない "
set noswapfile

" 行番号を表示する "
set number

" 自動改行しない "
set tw=0
set formatoptions=q

" クリップボードを使う "
set clipboard=unnamed

" 検索時にファイルの最後まで行っても最初に戻らない "
set nowrapscan

" ステータスラインを常に表示する "
set laststatus=2

" ステータスラインにファイル名、文字コード、改行コードを表示する "
set statusline=%<%f\ %m%r%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l/%L,%v
