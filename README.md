# dotfiles

## インストール手順

### Linuxの場合

```
$ cd ${HOME}
$ git clone https://github.com/hironet/dotfiles .dotfiles
$ cd .dotfiles
$ ./symlink.sh
```

### Windowsの場合

1. dotfilesの[ZIPファイル](https://github.com/hironet/dotfiles/archive/master.zip)をダウンロードする。
1. ダウンロードしたZIPファイルを解凍する。
1. 「.gitconfig」を「C:\Users\<ユーザ名>」配下に配置する。
1. 以下2つのファイルについて、ファイル名を変更した後、vimのインストールフォルダに配置する。
    * .vimrc → _vimrc
    * .gvimrc → _gvimrc
