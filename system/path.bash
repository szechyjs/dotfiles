if [ -d "/usr/local/sbin" ] ; then
    export PATH="/usr/local/sbin:$PATH"
fi

if [ -d "$HOME/android/android-sdk-linux" ] ; then
    export PATH="$PATH:$HOME/android/android-sdk-linux/tools"
fi

if [ -d "$HOME/bin" ] ; then
    export PATH="$HOME/bin:$PATH"
fi

if [ -d "/usr/local/heroku/bin" ] ; then
    export PATH="$PATH:/usr/local/heroku/bin"
fi

if [ -f "$HOME/.cargo/env" ] ; then
    source $HOME/.cargo/env
fi

export PATH=$DOTFILES/bin:$PATH
