#!/bin/sh

git clone https://github.com/Shougo/neobundle.vim .vim/bundle/neobundle.vim
git clone https://github.com/sstephenson/rbenv.git .rbenv
mkdir .rbenv/plugins
git clone https://github.com/sstephenson/ruby-build.git .rbenv/plugins

exit 0
