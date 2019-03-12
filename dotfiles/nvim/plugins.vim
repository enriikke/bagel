call plug#begin('~/.config/nvim/plugged')

  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  "                                   Colors
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " https://trevordmiller.com/projects/nova
  Plug 'trevordmiller/nova-vim'

  " other colors I like
  " Plug 'arcticicestudio/nord-vim'
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
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'
  Plug 'scrooloose/nerdtree'
  Plug 'bronson/vim-trailing-whitespace'
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'Shougo/neosnippet'
  Plug 'Shougo/neosnippet-snippets'
  Plug 'mattn/gist-vim'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'Raimondi/delimitMate'
  Plug 'vim-scripts/tComment'
  Plug 'vim-airline/vim-airline'

  " Plug 'sheerun/vim-polyglot'
  Plug 'airblade/vim-rooter'
  Plug 'tpope/vim-dispatch'
  Plug 'radenling/vim-dispatch-neovim'
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'tpope/vim-projectionist'
  Plug 'w0rp/ale'
  Plug 'mhinz/vim-grepper'
  Plug 'janko-m/vim-test'

  Plug 'benmills/vimux'

  " Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }

  " Plug 'jeffkreeftmeijer/vim-numbertoggle'

  " Plug 'sickill/vim-pasta'
  Plug 'christoomey/vim-run-interactive'
  Plug 'godlygeek/tabular'
  Plug 'majutsushi/tagbar'
  Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }
  Plug 'junegunn/limelight.vim', { 'on': 'Limelight' }

  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  "                                    Ruby
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
  Plug 'tpope/vim-bundler', { 'for': 'ruby' }
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-rbenv', { 'for': 'ruby' }
  Plug 'joker1007/vim-ruby-heredoc-syntax', { 'for': 'ruby' }

  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  "                                    Go
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  Plug 'fatih/vim-go', { 'for': 'go', 'do': ':GoUpdateBinaries' }
  " Plug 'sebdah/vim-delve', { 'for': 'go' }
  " Plug 'zchee/deoplete-go', { 'for': 'go', 'do': 'make' }

  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  "                                 JavaScript
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'jsx'] }
  Plug 'mxw/vim-jsx', { 'for': ['javascript', 'jsx'] }
  Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'jsx'], 'do': 'yarn global add tern' }
  Plug 'wokalski/autocomplete-flow', { 'for': ['javascript', 'jsx'] }

  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  "                                   HTML
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  Plug 'othree/html5.vim', { 'for': 'html' }

  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  "                                  Other
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  Plug 'vitalk/vim-simple-todo', { 'for': 'markdown' }
  Plug 'ekalinin/Dockerfile.vim'
  Plug 'jparise/vim-graphql'

call plug#end()
