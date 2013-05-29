git_prompt=yes
GIT_PS1_SHOWDIRTYSTATE=true

if [ -n "$git_prompt" ]; then
    if [ "$color_prompt" = yes ]; then
        RedColor=$MonoOrange
        GrnColor=$MonoGreen
        BluColor=$MonoBlue
        Off=$Color_Off
    fi
    GITPS='$(
        if [[ $(__git_ps1) =~ \*\)$ ]]
        then echo "'$RedColor'"$(__git_ps1 " {%s}")
        elif [[ $(__git_ps1) =~ \+\)$ ]]
        then echo "'$GrnColor'"$(__git_ps1 " {%s}")
        else echo "'$BluColor'"$(__git_ps1 " (%s)")
        fi)'$Off' '
fi

