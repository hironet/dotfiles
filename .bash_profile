if [ -d ${HOME}/bin ]; then
    export PATH="${PATH}:${HOME}/bin"
fi

case `uname` in
    'Darwin')
        if [ -f /usr/local/bin/rbenv ]; then
            eval "$(rbenv init -)"
        fi
        ;;
esac

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
