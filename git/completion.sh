git_prompt=yes

if [ -n "$git_prompt" ]; then
    if [ "$color_prompt" = yes ]; then
        RedColor=$MonoOrange
        GrnColor=$MonoBlue
        Off=$Color_Off
    fi
    GITPS='$(git branch &>/dev/null;\
    if [ $? -eq 0 ]; then \
        echo "$(echo `git status` | grep "nothing" > /dev/null 2>&1; \
        if [ "$?" -eq "0" ]; then \
            echo "'$GrnColor'"$(__git_ps1 " (%s)"); \
        else \
            echo "'$RedColor'"$(__git_ps1 " {%s}"); \
        fi)'$Off' "; \
    fi)'
fi

