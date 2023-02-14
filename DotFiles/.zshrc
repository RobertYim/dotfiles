# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ys"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git z)

source $ZSH/oh-my-zsh.sh


# User configuration

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vi'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# private aliases
source $HOME/Google\ Drive/backup/privateShellAlias.bash
# Source aliases
source $HOME/Documents/dotfiles/DotFiles/ShellAlias.bash

# PATH
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"

export https_proxy=http://127.0.0.1:9000
export http_proxy=http://127.0.0.1:9000

### macOS Only
if [[ $OSTYPE == darwin* ]]; then
# Java
# export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"

# Go
export GOROOT="/usr/local/opt/go/libexec"
export GOPATH="$HOME/Library/go"

# android
# export ANDROID="$HOME/Library/Android/sdk/platform-tools"

# MacGPG2
export GPG2="/usr/local/MacGPG2/bin"

# Python unversioned symlinks
# export Python_PATH="/usr/local/opt/python/libexec/bin"
export Python_PATH="$HOME/Library/Python/3.8/bin"

# Conda
# export Conda="/usr/local/miniconda3/bin"

# Rust
export RUSTPATH="$HOME/.cargo"

# OpenSSL
export OpenSSL="/usr/local/opt/openssl/bin"
export PATH=$Python_PATH:$RUSTPATH/bin:$OpenSSL:$GOPATH/bin:$GPG2:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# Opt out Homebrew analytics
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_AUTO_UPDATE=1

# Load zsh-autosuggestions plugin
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

fi
###


