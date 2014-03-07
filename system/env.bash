if type -p atom > /dev/null ; then
    export EDITOR=atom
elif type -p subl > /dev/null ; then
    export EDITOR=subl
else
    export EDITOR=vim
fi
