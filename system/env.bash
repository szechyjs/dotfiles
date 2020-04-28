if type -p atom > /dev/null ; then
    export EDITOR=atom
elif type -p subl > /dev/null ; then
    export EDITOR=subl
else
    export EDITOR=vim
fi

export VAGRANT_HOME=/Volumes/data/VMs/vagrant.d

export GOPATH=$HOME/code/go
