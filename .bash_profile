if [ -d ${HOME}/bin ]; then
    export PATH="${PATH}:${HOME}/bin"
fi

case `uname` in
    'Darwin')
        if [ -f /usr/local/bin/rbenv ]; then
            eval "$(rbenv init -)"
        fi
        ;;
    'Linux')
        if [ -d ${HOME}/.rbenv/bin ]; then
            export PATH=${HOME}/.rbenv/bin:${PATH}
            eval "$(rbenv init -)"
        fi
        ;;
esac

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
