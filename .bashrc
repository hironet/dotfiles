RED='1;31'
GREEN='1;32'
BLUE='1;34'
if [ `whoami` == 'root' ]; then
    START_COLOR1='\[\e[${RED}m\]'
else
    START_COLOR1='\[\e[${BLUE}m\]'
fi
START_COLOR2='\[\e[${GREEN}m\]'
END_COLOR='\[\e[0m\]'
PS1="[${START_COLOR1}\u${END_COLOR}@${START_COLOR2}\h${END_COLOR} \W]\\$ "

if [ `which gls` ]; then
    alias ls='gls --color=auto'
fi > /dev/null 2>&1
alias la='ls -A'
alias ll='ls -Al'

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

if [ `which mvim` ]; then
    alias mvim='mvim --remote-tab-silent'
fi > /dev/null 2>&1
