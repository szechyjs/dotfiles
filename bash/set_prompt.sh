source $DOTFILES/bash/ps1constants.sh

if [ "$color_prompt" = yes ]; then
    PS1="${debian_chroot:+($debian_chroot)}$BGreen$User@$Host$Color_Off:$GITPS$BBlue$PathShort$Color_Off\$ "
else
    PS1="${debian_chroot:+($debian_chroot)}$User@$Host:$GITPS$PathShort\$ "
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

