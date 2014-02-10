if [ -z "$1" ]; then
    echo "A toolchain name is required!"
    return
fi

BASE_DIR=/tools
TOOLS_NAME=$1

TOOLS_DIR=$BASE_DIR/$TOOLS_NAME
REPO_DIR=$TOOLS_DIR-repo

if [ ! -d "$TOOLS_DIR" ]; then
    echo "Toolchain directory does not exist!"
    return
fi

COMPILER_TYPE="gcc"
PATH=$TOOLS_DIR/bin:$PATH
INC_FLAGS="-I$TOOLS_DIR/include"
LIB_FLAGS="-L$TOOLS_DIR/lib"

CMAKE_LIBRARY_PATH=$TOOLS_DIR/lib
CMAKE_INCLUDE_PATH=$TOOLS_DIR/include

CFLAGS="$COMP_FLAGS $CFLAGS"
CXXFLAGS="$COMP_FLAGS $CXXFLAGS"
CPPFLAGS="$INC_FLAGS"
LDFLAGS="$LIB_FLAGS"
PKG_CONFIG_PATH=$TOOLS_DIR/lib/pkgconfig
LD_LIBRARY_PATH=$TOOLS_DIR/lib

export COMPILER_TYPE
export PATH
export TOOLS_DIR
export TOOLS_NAME
export REPO_DIR
export INC_FLAGS
export LIB_FLAGS
export CMAKE_LIBRARY_PATH
export CMAKE_INCLUDE_PATH
export COMP_FLAGS
export CFLAGS
export CXXFLAGS
export CPPFLAGS
export LDFLAGS
export PKG_CONFIG_PATH
export LD_LIBRARY_PATH

source $DOTFILES/bash/set_prompt.sh
