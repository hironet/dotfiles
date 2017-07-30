if [ -d ${HOME}/bin ]; then
    export PATH="$PATH:$HOME/bin"
fi

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
