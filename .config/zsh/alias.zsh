# Platform specific values
if [ '$PLATFORM' = 'Linux' ]; then
  LS_COLOR='--color'
fi

alias ls='ls $LS_COLOR'
alias ll='ls -lh'
alias la='ls -A'
alias l='ls -lhA'

# Start week on Monday
alias cal='cal -m'

# Use editor consistently
alias view=$EDITOR -R
alias edit=$EDITOR

# Run tmux in 256 color mode
alias tmux='tmux -2'

# tmux aliases
alias ta='tmux at'
alias tat='tmux at -t'
alias tls='tmux ls'
alias tn='tmux new -s'

# Google translate cli, en -> ru
alias trs='trans'
alias tru='trans {=ru}'

# Pretty self explaining
alias g=git

# Handy pipes
alias -g G='| grep -a'
alias -g P='| $PAGER'
alias -g W='| wc -l'
alias -g H='| head -n'
alias -g C='| xsel -i && xsel -o'
alias -g S="| curl -F 'sprunge=<-' http://sprunge.us C"
alias -r T='tail -f'

# Factor listener, readline handler wrapped
alias factor='rlwrap factor-vm -run=listener'

# Transmission ncurses remote cli
alias tra='transmission-remote-cli'

# Find that fat files
#alias space='du --dereference --max-depth=2 -h . | sort -h -r | head -n 20'
alias space='du -d 2 -k -c . | sort -n -r | head -n 20'

# Password generation. Just one. Print and put to clipboard
alias pwgen='pwgen -1cnsB 12 C'

# Stupid MySQL treats ^C as ^D
alias mysql='mysql --sigint-ignore'

# Ignore that Guard is installed user-wide
alias guard='guard --no-bundler-warning'
