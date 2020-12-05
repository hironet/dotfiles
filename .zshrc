[ -d ${HOME}/bin ] && export PATH="${PATH}:${HOME}/bin"

if [ $(whoami) = 'root' ]; then
    PROMPT='%F{red}%n%f@%F{green}%m%f %1~ %# '
else
    PROMPT='%F{blue}%n%f@%F{green}%m%f %1~ %# '
fi

alias la='ls -AFG'
alias ll='ls -AFGl'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
