#!/bin/sh

mkdir -p .vim/bundle
git clone https://github.com/Shougo/neobundle.vim .vim/bundle/neobundle.vim

git clone https://github.com/sstephenson/rbenv.git .rbenv
git clone https://github.com/sstephenson/ruby-build.git .rbenv/plugins/ruby-build

exit 0
