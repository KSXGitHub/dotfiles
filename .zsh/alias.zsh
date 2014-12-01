# Shell aliases
alias ll='ls -lh'
alias la='ls -A'
alias l='ls -lhA'

# Start week from Monday
alias cal='cal -m'

export EDITOR=nvim
# Use nvim everywhere
alias vim=nvim
alias vi=nvim
alias view=nvim -R
alias edit=nvim

# Run tmux in 256 color mode
alias tmux='tmux -2'

# tmux aliases
alias ta='tmux at'
alias tat='tmux at -t'
alias tls='tmux ls'
alias tn='tmux new -s'

# Google translate cli, en -> ru
alias tru='trs {=ru}'

# Pretty self explaining
alias g=git

# Handy pipes
alias -g G='| grep'
alias -g L='| less'
alias -g W='| wc -l'
alias -r T='tail -f'

# Factor listener, readline handler wrapped
alias factor='rlwrap factor-vm -run=listener'

# Transmission ncurses remote cli
alias tra='transmission-remote-cli'

# Find that fat files
alias space='du --max-depth=2 -h . | sort -h -r | head -n 20'

# Password generation. Just one. Print and put to clipboard
alias pwgen='pwgen -1cnsB 12 >&2 | xclip'

# Stupid MySQL treats ^C as ^D
alias mysql='mysql --sigint-ignore'

# Ignore that Guard is installed system-wid
alias guard='guard --no-bundler-warning'