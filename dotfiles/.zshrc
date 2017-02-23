source ~/.config/zsh/init.zsh
source ~/.config/zsh/exports.zsh
source ~/.config/zsh/aliases.zsh
source /usr/local/share/antigen/antigen.zsh

# Use omz as a dependency of some plugins
antigen use oh-my-zsh

# Bundle useful plugins
antigen bundle bundler
antigen bundle docker
antigen bundle docker-compose
antigen bundle git
antigen bundle golang
antigen bundle history
antigen bundle rails
antigen bundle rbenv
antigen bundle thefuck
antigen bundle tmux
antigen bundle tmuxinator
antigen bundle vi-mode
antigen bundle lukechilds/zsh-nvm
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

# Load the theme
antigen theme theunraveler

# Go wild
antigen apply
