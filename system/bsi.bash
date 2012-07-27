if grep -q "oh.bsi.local" /etc/resolv.conf ; then
    alias tools='source /tools/new_tools_lin.sh prod64'
    alias tools-static='source /tools/new_tools_lin.sh static-prod64'
    alias ecl-cmake='cmake -G "Eclipse CDT4 - Unix Makefiles" -D ECLIPSE_CDT4_GENERATE_SOURCE_PROJECT=TRUE -D CMAKE_BUILD_TYPE=Debug -D CMAKE_ECLIPSE_MAKE_ARGUMENTS=-j4 ../source/'

    alias raws-build='cd /home/jszechy/code/raws-ng/build'
    alias raws-src='cd /home/jszechy/code/raws-ng'
    alias raws-tmp='cd /tmp/raws'

    export WXRAWS=/tmp/raws
    export WXGR=/tmp/raws
fi
