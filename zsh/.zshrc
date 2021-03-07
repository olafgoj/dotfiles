# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="cobalt2"

COMPLETION_WAITING_DOTS="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Read aliases file
source $HOME/.zsh_aliases

# z command
. /usr/local/etc/profile.d/z.sh

# golang
export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/olafgoj/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/olafgoj/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/olafgoj/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/olafgoj/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# chruby
source /usr/local/opt/chruby/share/chruby/auto.sh
. /usr/local/opt/chruby/share/chruby/chruby.sh
