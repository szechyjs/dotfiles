alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lt='ls -ltr'

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias grep='grep --exclude-dir=".svn" --exclude-dir=".git" -n --color'

alias sync='rsync -ahP --delete'

alias vault='ssh vault'
alias devbox='ssh devbox'

alias jake='make -j$(gnproc)'

alias killdups='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user;killall Finder;echo "Rebuilt Open With, relaunching Finder"'

alias docker-rm-hanging='docker rmi $(docker images -q --filter "dangling=true")'

alias omnibus-docker='docker run -it --rm -v $PWD:/code -u="root" -w="/code" docker.corp.brilligent.com:5000/ci-mrts-omnibus /bin/bash'

alias today='gcal -cn -q us_oh  .'

alias pubsv9lint='xmllint --schema /Volumes/share/lni/FOUO/pubs/V9/PUBSV9FOUO/PUBS/Schema/PUBS/PUBS-XML.xsd'

alias listening='lsof -iTCP -sTCP:LISTEN'
alias routes='netstat -nr'
