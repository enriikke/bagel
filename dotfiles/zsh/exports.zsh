# Setup terminal, editor, shell, and turn on colors
export TERM=xterm-256color
export SHELL=$(which zsh)
export EDITOR="nvim"
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

# Enable color in grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='3;33'

# Go Vars
export GOPATH=$HOME/Projects/go
export PATH=$PATH:$GOPATH/bin

# Plugin Vars
export NVM_LAZY_LOAD=true
export BUNDLED_COMMANDS=(rubocop)

# Other
export ARCHFLAGS='-arch x86_64'
export LESS='--ignore-case --raw-control-chars'
export PAGER='most'
export LC_COLLATE=C
