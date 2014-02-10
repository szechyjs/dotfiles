if grep -q "brilligent" /etc/resolv.conf ; then
    alias toolchain="source $DOTFILES/system/tools.sh"
    alias tools="source $DOTFILES/system/tools.sh centos5.8-tools"
    alias ecl-cmake='cmake -G "Eclipse CDT4 - Unix Makefiles" -D ECLIPSE_CDT4_GENERATE_SOURCE_PROJECT=TRUE -D CMAKE_BUILD_TYPE=Debug -D CMAKE_ECLIPSE_MAKE_ARGUMENTS=-j4 ../source/'

    alias raws-build='cd /home/jszechy/code/raws-ng/build'
    alias raws-src='cd /home/jszechy/code/raws-ng'
    alias raws-tmp='cd /tmp/raws'

    export WXRAWS=/tmp/raws
    export WXGR=/tmp/raws
fi
