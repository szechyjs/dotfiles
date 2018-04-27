# This needs to be sourced last as the latest versions of RVM
# check that rvm is at the beginning of the path.

# Load RVM into a shell session *as a function*
if [ -s "/etc/profile.d/rvm.sh" ]; then
    # Multi-User installation, automatically add to PATH
    source "/etc/profile.d/rvm.sh"
elif [ -s "$HOME/.rvm/scripts/rvm" ]; then
    source "$HOME/.rvm/scripts/rvm"
    export PATH="$PATH:$HOME/.rvm/bin"
fi
