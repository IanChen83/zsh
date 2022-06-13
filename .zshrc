#
# Prezto
#
# To configure Prezto, modify .zpreztorc

# utility module will translate it to proper aliase
alias ls="gls"

zprezto_script="${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
if [[ -s "${zprezto_script}" ]]; then
  source "${zprezto_script}"
else
  echo "'${zprezto_script}' not found, Prezto will not be loaded."
fi
unset zprezto_script

#
# Language
#

if [[ -z "$LANG" ]]; then
  export LANG='en_US.UTF-8'
fi


# Tools
if [[ -z "$BROWSER" && "$OSTYPE" == darwin* ]]; then
  export BROWSER='open'
fi

#
# Editors
#

if [[ -z "$EDITOR" ]]; then
  export EDITOR='nano'
fi
if [[ -z "$VISUAL" ]]; then
  export VISUAL='nvim'
fi
if [[ -z "$PAGER" ]]; then
  export PAGER='less'
fi
export GIT_EDITOR=nvim
export SUDO_EDITOR=/usr/bin/nvim
export BAT_PAGER="less -R"

alias vim="nvim"
alias cat="bat"
alias diff="delta"

#
# Paths
#

# Ensure path arrays do not contain duplicates.
typeset -gU cdpath fpath mailpath path

# Set the list of directories that cd searches.
# cdpath=(
#   $cdpath
# )

# Set the list of directories that Zsh searches for programs.
path=(
  $path
  /opt/{homebrew,local}/{,s}bin(N)
)

#
# Less
#

# Set the default Less options.
if [[ -z "$LESS" ]]; then
  export LESS='--use-color -M -R -S -w -z-4'
fi

# Set the Less input preprocessor.
# Try both `lesspipe` and `lesspipe.sh` as either might exist on a system.
if [[ -z "$LESSOPEN" ]] && (( $#commands[(i)lesspipe(|.sh)] )); then
  export LESSOPEN="| /usr/bin/env $commands[(i)lesspipe(|.sh)] %s 2>&-"
fi

#
# Language
#

if [[ -z "$LANG" ]]; then
  export LANG='en_US.UTF-8'
fi

#
# Others
#

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
