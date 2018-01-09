if [ -f /etc/bash_completion ] ; then
  . /etc/bash_completion
fi

# requires: brew install bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion ]
fi

for config_file in $DOTFILES/**/completion.sh
do
  [ -f "$config_file" ] || continue
  . $config_file
done
