if [ `which gls` ]; then
    alias ls='gls --color=auto'
else
    alias ls='ls --color=auto'
fi > /dev/null 2>&1
alias la='ls -A'
alias ll='ls -Al'

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

alias mvim='mvim --remote-tab-silent'
