[ -d ${HOME}/bin ] && export PATH="${PATH}:${HOME}/bin"

if [ $(whoami) = 'root' ]; then
    PROMPT='%F{red}%n%f@%F{green}%m%f %1~ %# '
else
    PROMPT='%F{blue}%n%f@%F{green}%m%f %1~ %# '
fi

case $(uname) in
    'Darwin')
        alias la='ls -AFG'
        alias ll='ls -AFGl'
        ;;
    'Linux')
        alias la='ls -AF'
        alias ll='ls -AFl'
        ;;
esac
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
