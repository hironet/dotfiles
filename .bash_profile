if [ -d ${HOME}/bin ]; then
    export PATH=$PATH:$HOME/bin
fi

if [ -d /Applications/MacVim.app/Contents/MacOS ]; then
    export PATH=/Applications/MacVim.app/Contents/MacOS:$PATH
fi

export RBENV_ROOT=/usr/local/rbenv
if [ `which brew` ]; then
    export RUBY_CONFIGURE_OPTS="--with-readline-dir=`brew --prefix readline` --with-openssl-dir=`brew --prefix openssl`"
fi > /dev/null 2>&1

if [ `which rbenv` ]; then
    eval "$(rbenv init -)"
fi > /dev/null 2>&1

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
