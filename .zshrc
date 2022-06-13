# Source Prezto.

zprezto_script="${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
if [[ -s "${zprezto_script}" ]]; then
  source "${zprezto_script}"
else
  echo "'${zprezto_script}' not found, Prezto will not be loaded."
fi

# Tools
alias cat="bat"
alias diff="delta"

export BAT_PAGER="less -R"

# pyenv
# if command -v pyenv 1>/dev/null 2>&1; then
  # eval "$(pyenv init -)"
  # eval "$(pyenv virtualenv-init -)"
  # export PATH="$(pyenv root)/shims:${PATH}"
# fi

# GOPATH
export GOPATH=/Users/ianchen/go
export PATH=$PATH:$GOPATH/bin
export CGO_ENABLED=0

# if [ -f '/opt/homebrew/share/kube-ps1.sh' ]; then
#   # KUBE_PS1_CLUSTER_FUNCTION=get_cluster_short
#   KUBE_PS1_SYMBOL_ENABLE=false
#   KUBE_PS1_CTX_COLOR=cyan
#   KUBE_PS1_DIVIDER=/
#   KUBE_PS1_PREFIX=""
#   KUBE_PS1_SUFFIX=" "
#   source /opt/homebrew/share/kube-ps1.sh
#   PROMPT='$(kube_ps1)'$PROMPT
# fi

# gcloud
# nvm
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" --no-use  # This loads nvm

# Visual Studio Code (code)
[ -f '/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code' ] && \
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
