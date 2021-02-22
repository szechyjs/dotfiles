export GOPATH=$HOME/code/go
export GOBIN=$GOPATH/bin

if [ -d "$GOPATH/bin" ] ; then
    export PATH=$PATH:$GOBIN
fi
