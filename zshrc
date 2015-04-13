ZSH=$HOME/.oh-my-zsh
ZSH_THEME="gallois"
DISABLE_AUTO_UPDATE="true"
DISABLE_LS_COLORS="true"

plugins=(git bundler brew gem rbates terminalapp gerrit history-substring-search)

export PATH="node_modules/.bin:/usr/local/share/npm/bin:/usr/local/bin:$PATH"

source $ZSH/oh-my-zsh.sh

export DISABLE_AUTO_TITLE=true
#export TERM=screen-256color-bce
unsetopt pushdignoredups

export POW_EXT_DOMAINS=ngrok.com

# for Homebrew installed rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

alias simulator='open /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app'
alias getsmartdbreset='dropdb get_smart_test && createdb get_smart_test && RAILS_ENV=test bin/rails runner "ActiveRecord::Base.connection.execute(\"CREATE SCHEMA hstore; CREATE EXTENSION HSTORE SCHEMA hstore\")" && RAILS_ENV=test be rake db:migrate'
export EDITOR=vim

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export DOCKER_HOST=tcp://127.0.0.1:2376
export DOCKER_CERT_PATH=/Users/dbowman/.dinghy/certs
export DOCKER_TLS_VERIFY=1

# Use vim keybindings
#bindkey -v


# With gruvbox we are rocking custom -italic $TERM, which don't exist in
# terminfo remote hosts, so we need to set the remote-friendly $TERM when
# sshing
SSHTERM=$(echo $TERM | sed 's/-italic//')

function ssh() {
env TERM=$SSHTERM ssh "$@"
}
