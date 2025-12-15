# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/danharsanyi/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/danharsanyi/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/danharsanyi/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/danharsanyi/google-cloud-sdk/completion.zsh.inc'; fi

export USE_GKE_GCLOUD_AUTH_PLUGIN=True

export TMPDIR=/tmp

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

export GOPRIVATE=github.com

export GOPATH="$HOME/go"
PATH="$GOPATH/bin:$PATH"

source ~/.bash_aliases
