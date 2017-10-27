if [ -d ${HOME}/bin ]; then
    export PATH="$PATH:$HOME/bin"
fi

if [ -f /usr/local/bin/rbenv ]; then
    eval "$(rbenv init -)"
fi

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
