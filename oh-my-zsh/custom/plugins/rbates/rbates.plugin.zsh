c() { cd ~/code/$1; }
_c() { _files -W ~/code -/; }
compdef _c c

s() { cd ~/spokes/$1; }
_s() { _files -W ~/spokes -/; }
compdef _s s

h() { cd ~/$1; }
_h() { _files -W ~/ -/; }
compdef _h h

export EDITOR='vim'

# autocorrect is more annoying than helpful
unsetopt correct_all

# a few aliases I like
alias gs='git status'
alias gd='git diff'
alias tlog='tail -f log/development.log'
alias rstart='touch tmp/restart.txt'

# add plugin's bin directory to path
export PATH="$(dirname $0)/bin:$PATH"
