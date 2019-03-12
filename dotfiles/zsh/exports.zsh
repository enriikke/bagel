# Setup terminal, editor, shell, and turn on colors
export TERM=screen-256color
export SHELL=$(which zsh)
export VISUAL="nvim"
export EDITOR="nvim"
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

# Enable color in grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='3;33'

# Go vars
export GOPATH=$HOME/Projects/ongoing/go
export PATH=$PATH:$GOPATH/bin

# Rust vars
export PATH=$PATH:$HOME/.cargo/bin

# Homebrew vars
export PATH=$PATH:/usr/local/sbin

# Plugin vars
export NVM_LAZY_LOAD=true
export BUNDLED_COMMANDS=(rubocop)
export FZF_DEFAULT_COMMAND='rg --files --hidden'

# Other
export ARCHFLAGS='-arch x86_64'
export LESS='--ignore-case --raw-control-chars'
export PAGER='most'
export LC_COLLATE=C
