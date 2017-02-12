call plug#begin('~/.config/nvim/plugged')

  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  "                                   Colors
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  Plug 'gosukiwi/vim-atom-dark'
  Plug 'joshdick/onedark.vim'

  Plug 'arcticicestudio/nord-vim'
  Plug 'jacoborus/tender.vim'
  Plug 'muellan/am-colors'
  Plug 'altercation/vim-colors-solarized'

  Plug 'joshdick/airline-onedark.vim'

  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  "                                  Utilities
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'easymotion/vim-easymotion'
  " Plug 'benekastah/neomake'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'
  Plug 'scrooloose/nerdtree'
  Plug 'bronson/vim-trailing-whitespace'
  Plug 'Shougo/deoplete.nvim'
  Plug 'Shougo/neosnippet'
  Plug 'Shougo/neosnippet-snippets'
  Plug 'mattn/gist-vim'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'Raimondi/delimitMate'
  Plug 'vim-scripts/tComment'
  " Plug 'bling/vim-airline'
  Plug 'itchyny/lightline.vim'

  Plug 'sickill/vim-pasta'
  Plug 'christoomey/vim-run-interactive'
  Plug 'godlygeek/tabular'
  Plug 'majutsushi/tagbar'
  Plug 'rking/ag.vim'
  Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }
  Plug 'junegunn/limelight.vim', { 'on': 'Limelight' }

  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  "                                    Ruby
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
  Plug 'tpope/vim-bundler', { 'for': 'ruby' }
  Plug 'tpope/vim-rails', { 'for': 'ruby' }
  " Plug 'tpope/vim-endwise', { 'for': 'ruby' }
  Plug 'tpope/vim-rbenv', { 'for': 'ruby' }
  " Plug 'thoughtbot/vim-rspec', { 'for': 'ruby' }

  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  "                                    Go
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  Plug 'fatih/vim-go', { 'for': 'go' }

  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  "                                 JavaScript
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'jsx'] }
  Plug 'mxw/vim-jsx', { 'for': ['javascript', 'jsx'] }

  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  "                                   HTML
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  Plug 'othree/html5.vim', { 'for': 'html' }

  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  "                                  Other
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  Plug 'vitalk/vim-simple-todo', { 'for': 'markdown' }
  Plug 'ekalinin/Dockerfile.vim'

call plug#end()
