if [ "$color_prompt" = yes ]; then
    PS1="${debian_chroot:+($debian_chroot)}$MonoBPink$User$MonoWhite@$MonoBBlue$Host$MonoWhite:$GITPS$MonoBGreen$PathShort$MonoWhite\$ $MonoString"
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

