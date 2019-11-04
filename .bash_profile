[ -d ${HOME}/bin ] && export PATH="${PATH}:${HOME}/bin"

if [ -d ${HOME}/.rbenv/bin ]; then
    export PATH=${HOME}/.rbenv/bin:${PATH}
    eval "$(rbenv init -)"
fi

export HISTTIMEFORMAT="%F %T "

[ -f ${HOME}/.bashrc ] && . ${HOME}/.bashrc
