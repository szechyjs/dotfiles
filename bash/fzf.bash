if [ -f $(brew --prefix)/opt/fzf/shell/completion.bash ]; then
    source $(brew --prefix)/opt/fzf/shell/completion.bash 2> /dev/null
fi

if [ -f $(brew --prefix)/opt/fzf/shell/key-bindings.bash ]; then
    source $(brew --prefix)/opt/fzf/shell/key-bindings.bash
fi
