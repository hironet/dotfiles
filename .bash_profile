if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

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

if [ -d ${HOME}/bin ]; then
    export PATH=$PATH:$HOME/bin
fi

if [ -d ${HOME}/.rbenv/bin ]; then
    export PATH=${HOME}/.rbenv/bin:$PATH
    eval "$(rbenv init -)"
fi

if [ -d /opt/chef/embedded/bin ]; then
    export PATH=/opt/chef/embedded/bin:$PATH
fi

if [ -d /Applications/MacVim.app/Contents/MacOS ]; then
    export PATH=/Applications/MacVim.app/Contents/MacOS:$PATH
fi
