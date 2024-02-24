alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lt='ls -ltr'

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias grep='grep --exclude-dir=".svn" --exclude-dir=".git" -n --color'

alias sync='rsync -ahP --delete'

alias jake='make -j$(gnproc)'

alias killdups='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user;killall Finder;echo "Rebuilt Open With, relaunching Finder"'

alias docker-rm-hanging='docker rmi $(docker images -q --filter "dangling=true")'

alias today='gcal -cn -q us_oh  .'

alias listening='lsof -iTCP -sTCP:LISTEN'
alias routes='netstat -nr'

alias be='bundle exec'

if [ -x "$(command -v nvim)" ]; then
  alias vi='nvim'
  alias vim='nvim'
fi

