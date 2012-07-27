#!/bin/bash

set -x

SUBLIME_DIR=$HOME/.config/sublime-text-2/Packages

mv "$SUBLIME_DIR/User" "$SUBLIME_DIR/User.backup"
ln -s "$DOTFILES/sublime2/User" "$SUBLIME_DIR"
