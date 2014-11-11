#!/usr/bin/env bash

################
## Ruby Setup ##
################

# TODO: Get the latest version dynamically
ruby_version="2.1.3"

brewui 'rbenv'
eval "$(rbenv init -)"

brewui 'rbenv-gem-rehash'
brewui 'ruby-build'

log "Installing Ruby $ruby_version"
rbenv install -s "$ruby_version"
log "Done"

log "Setting Ruby $ruby_version as the global default"
rbenv global "$ruby_version"
rbenv local "$ruby_version"
rbenv rehash
log "Done"


#######################
## Nice-To-Have Gems ##
#######################

log "Updating to the latests Rubygems version"
gem update --system
log "Done"

log "Installing Bundler"
gem install bundler --no-document
log "Done"

log "Configuring Bundler"
number_of_cores=$(sysctl -n hw.ncpu)
bundle config --global jobs $((number_of_cores - 1))
log "Done"

log "Installing Rails"
gem install rails --no-document
log "Done"

log "Installing Parity"
gem install parity --no-document
log "Done"
