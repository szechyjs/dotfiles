# A bash function to display a growl notification using iTerm's magic
# escape sequence.

if [[ "$TERM_PROGRAM" == 'iTerm.app' ]]; then
  function growl() {
      echo -e $'\e]9;'${*}'\007';
      return
  }
fi
