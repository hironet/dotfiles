if [ -d ${HOME}/bin ]; then
    export PATH=$PATH:$HOME/bin
fi

if [ -d ${HOME}/.rbenv/bin ]; then
    export PATH="$HOME/.rbenv/bin:$PATH"
fi

if [ `which rbenv` ]; then
    eval "$(rbenv init -)"
fi > /dev/null 2>&1

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
