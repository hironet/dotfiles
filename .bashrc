red='1;31'
green='1;32'
blue='1;34'
if [ `whoami` == 'root' ]; then
    start_color1='\[\e[${red}m\]'
else
    start_color1='\[\e[${blue}m\]'
fi
start_color2='\[\e[${green}m\]'
end_color='\[\e[0m\]'
PS1="[${start_color1}\u${end_color}@${start_color2}\h${end_color} \W]\\$ "

case `uname` in
    'Darwin')
        alias la='ls -AFG'
        alias ll='ls -AFGl'
        ;;
    'Linux' | 'MSYS_NT-6.1')
        alias la='ls -AF'
        alias ll='ls -AFl'
        ;;
esac

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
