alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lt='ls -lt'

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias grep='grep --exclude-dir=".svn" -n --color'

alias archive='rsync -ahP --delete'
