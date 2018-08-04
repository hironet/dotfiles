# dotfiles

## インストール手順

### macOS または Linuxの場合

```
$ cd ${HOME}
$ git clone https://github.com/hiroyuki1126/dotfiles .dotfiles
$ cd .dotfiles
$ ./symlink.sh
```

### Windowsの場合

1. dotfilesの[ZIPファイル](https://github.com/hiroyuki1126/dotfiles/archive/master.zip)をダウンロードする。
1. ダウンロードしたZIPファイルを解凍し、ファイルを適切な場所に配置する。
1. vimを使用する場合は、以下を行う。
    1. ファイル名を変更する。
        * .vimrc → _vimrc
        * .gvimrc → _gvimrc
    1. 「C:\Users\ユーザ名」配下に「.gitconfig」を作成する。
