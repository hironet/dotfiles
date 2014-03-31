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

if [ -d /Applications/MacVim.app/Contents/MacOS ]; then
    export PATH=/Applications/MacVim.app/Contents/MacOS:$PATH
fi

export RBENV_ROOT=/usr/local/rbenv
if [ `which brew` ]; then
    export RUBY_CONFIGURE_OPTS="--with-readline-dir=`brew --prefix readline` --with-openssl-dir=`brew --prefix openssl`"
fi > /dev/null 2>&1

if [ `which rbenv` ]; then
    eval "$(rbenv init -)"
fi > /dev/null 2>&1
