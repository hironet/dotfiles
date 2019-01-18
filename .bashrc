function set_prompt_color() {
    readonly red='1;31'
    readonly green='1;32'
    readonly blue='1;34'
    if [ $(whoami) == 'root' ]; then
        readonly start_color1='\[\e[${red}m\]'
    else
        readonly start_color1='\[\e[${blue}m\]'
    fi
    readonly start_color2='\[\e[${green}m\]'
    readonly end_color='\[\e[0m\]'
    PS1="[${start_color1}\u${end_color}@${start_color2}\h${end_color} \W]\\$ "
}

function set_alias() {
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
}

set_prompt_color
set_alias
