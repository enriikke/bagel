call plug#begin('~/.config/nvim/plugged')

  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  "                                   Colors
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  Plug 'arcticicestudio/nord-vim'

  " Other colors I like
  " Plug 'gosukiwi/vim-atom-dark'
  " Plug 'joshdick/onedark.vim'
  " Plug 'jacoborus/tender.vim'
  " Plug 'muellan/am-colors'
  " Plug 'altercation/vim-colors-solarized'
  " Plug 'joshdick/airline-onedark.vim'

  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  "                                  Utilities
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  Plug 'easymotion/vim-easymotion'
  Plug 'neomake/neomake'
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
  Plug 'itchyny/lightline.vim'
  Plug 'junegunn/fzf', { 'dir': '~/.config/fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'

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
  Plug 'tpope/vim-rbenv', { 'for': 'ruby' }

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
