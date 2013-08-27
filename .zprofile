if [ -n "$DISPLAY" ]; then
#     BROWSER=epiphany
fi

# autorun X
if [[ -z "$DISPLAY" &&  $(tty) = /dev/tty1 ]]; then
  exec startx
fi

# Load RVM into a shell session *as a function*

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# chruby & chgems
# source /usr/share/chruby/chruby.sh
# source /usr/share/chruby/auto.sh
