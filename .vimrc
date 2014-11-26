set nocompatible

" シンタックスハイライトを有効にする "
syntax on

" 背景色を暗くする "
set background=dark

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
