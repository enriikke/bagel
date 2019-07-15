call plug#begin('~/.config/nvim/plugged')

  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  "                                   Colors
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " https://trevordmiller.com/projects/nova
  Plug 'trevordmiller/nova-vim'


  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  "                                  Utilities
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  Plug 'easymotion/vim-easymotion'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'
  Plug 'scrooloose/nerdtree'
  Plug 'bronson/vim-trailing-whitespace'
  Plug 'mattn/gist-vim'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'Raimondi/delimitMate'
  Plug 'vim-scripts/tComment'
  Plug 'vim-airline/vim-airline'
  Plug 'sheerun/vim-polyglot'
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
  Plug 'jeffkreeftmeijer/vim-numbertoggle'
  Plug 'christoomey/vim-run-interactive'
  Plug 'godlygeek/tabular'
  Plug 'majutsushi/tagbar'
  Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }
  Plug 'junegunn/limelight.vim', { 'on': 'Limelight' }
  Plug 'mhinz/vim-startify'
  Plug 'mhinz/vim-signify'
  Plug 'tyru/open-browser.vim'
  Plug 'tyru/open-browser-github.vim'
  Plug 'andymass/vim-matchup'
  Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install() } }

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
  Plug 'jparise/vim-graphql'
  Plug 'lervag/vimtex'

call plug#end()
