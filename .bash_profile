[ -d ${HOME}/bin ] && export PATH="${PATH}:${HOME}/bin"

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

export HISTTIMEFORMAT="%F %T "

[ -f ${HOME}/.bashrc ] && . ${HOME}/.bashrc
