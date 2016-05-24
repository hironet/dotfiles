" バックアップファイルを作成しない。
set nobackup

" スワップファイルを作成しない。
set noswapfile

" UNDOファイルを作成しない。
:set noundofile

" クリップボードを使用する。
set clipboard=unnamed

" 行番号を表示する。
set number

" 検索時にファイルの最後まで行っても最初に戻らない。
set nowrapscan

" ステータスラインの内容。
set statusline=%<%f\ %m%r%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l/%L,%v

"自動改行を無効にする。
set tw=0
set formatoptions=q
