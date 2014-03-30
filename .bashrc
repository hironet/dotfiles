if [ `which gls` > /dev/null 2>&1 ]; then
    alias ls='gls --color=auto'
else
    alias ls='ls --color=auto'
fi
alias la='ls -A'
alias ll='ls -Al'

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

alias mvim='mvim --remote-tab-silent'
