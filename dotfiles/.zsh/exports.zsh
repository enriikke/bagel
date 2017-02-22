# Currently this path is appendend to dynamically when picking a ruby version
export PATH=bin:script:~/.rbenv/bin:~/.bin:node_modules/.bin:/usr/local/sbin:/usr/local/bin:/usr/local/share/npm/bin:~/.cabal/bin:$HOME/Library/Haskell/bin:$PATH

# Setup terminal, and turn on colors
export TERM=xterm-256color
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

# Enable color in grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='3;33'

# This resolves issues install the mysql, postgres, and other gems with native non universal binary extensions
export ARCHFLAGS='-arch x86_64'

export LESS='--ignore-case --raw-control-chars'
export PAGER='most'
export EDITOR='vim'
export PYTHONPATH=/usr/local/lib/python2.6/site-packages
# CTAGS Sorting in VIM/Emacs is better behaved with this in place
export LC_COLLATE=C

# rbenv configuration
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# node configuration
export PATH="$PATH:$(npm root -g)"
export NODE_PATH="$NODE_PATH:$(npm root -g)"
source $(brew --prefix nvm)/nvm.sh

# Docker env vars
$(boot2docker shellinit 2> /dev/null)

# hlog "Exporting Go env vars"
#
# echo '\n# go configuration' >> ~/.zsh/exports.zsh
# echo 'export GOPATH=~/Projects/go' >> ~/.zsh/exports.zsh
# echo 'export PATH=$PATH:$GOPATH/bin' >> ~/.zsh/exports.zsh
# echo 'export PATH=$PATH:/usr/local/opt/go/libexec/bin' >> ~/.zsh/exports.zsh
#
# echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
# echo 'eval "$(rbenv init -)"' >> ~/.zshrc
