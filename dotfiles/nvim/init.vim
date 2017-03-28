""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                    NVIM
"                       https://github.com/Enriikke/bagel
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" enable vim settings from the start
set nocompatible

" load all vim plugins
if filereadable(expand('~/.config/nvim/plugins.vim'))
  source ~/.config/nvim/plugins.vim
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 Vim Behavior
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

filetype off                                              " reset filetype detection first
filetype plugin indent on                                 " enable filetype detection back
set encoding=utf-8 fileencoding=utf-8 termencoding=utf-8  " saving and encoding as utf-8
set ttyfast                                               " Indicate fast terminal conn for faster redraw
set hidden                                                " don't unload buffer when switching away
set modeline                                              " allow per-file settings via modeline
set secure                                                " disable unsafe commands in local .vimrc files
set nobackup nowritebackup noswapfile autoread            " no backup or swap
set hlsearch incsearch ignorecase smartcase               " sensible search
set wildmenu                                              " completion
set backspace=indent,eol,start                            " sane backspace
set ruler                                                 " show cursor position in status bar
set number                                                " show absolute line number of the current line
set scrolloff=10                                          " scroll window 10 lines around the cursor
set textwidth=80                                          " wrap at 80 characters like a valid human
set nocursorline                                          " don't highlight the current line
set nocursorcolumn                                        " don't highlight the current column
set printoptions=paper:letter                             " use letter as the print output format
set guioptions-=T                                         " turn off GUI toolbar (icons)
set guioptions-=r                                         " turn off GUI right scrollbar
set guioptions-=L                                         " turn off GUI left scrollbar
set winaltkeys=no                                         " turn off alt shortcuts
set laststatus=2                                          " always show status bar
set tags=./tags,tags;$HOME                                " check the parent directories for tags, too.
set showcmd                                               " display incomplete commands
set autoread                                              " automatically read changed files
set autowrite                                             " automatically :write before running commands
set autoindent                                            " enable autoindent
set splitbelow                                            " open new horizontal split panes to bottom
set splitright                                            " open new vertical split panes to right
set foldmethod=syntax                                     " fold based on indent
set foldnestmax=10                                        " deepest fold is 10 levels
set nofoldenable                                          " don't fold by default
set foldlevel=1                                           " fold one level
set mouse=""                                              " disable the mouse!
set completeopt=menu,menuone                              " show popup menu, even if there is one entry
set pumheight=10                                          " completion window max size
set lazyredraw                                            " wait to redraw
set clipboard+=unnamed,unnamedplus                        " use the system clipboard for yank/put/delete
" set undofile                                              " enable persitent undo
" set undodir=./tmp/undo                                    " set undo history dir
set noshowmode                                            " don't show the current mode since lightline does it


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  Formatting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" use 2 space tabs by default. use 4 for go, c, asm, python
set shiftwidth=2 tabstop=2 softtabstop=2 expandtab autoindent
autocmd filetype go,c,asm,python setlocal noexpandtab shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType make setlocal noexpandtab

" enable spellchecking for Markdown
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd FileType markdown setlocal spell

" spell check git commit messages
autocmd FileType gitcommit setlocal spell

" highlight extra whitespace
" set list listchars=tab:»·,trail:·,nbsp:·

" treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  Appearance
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax on
set background=dark
set t_Co=256 " 256 colors in terminal
let g:rehash256 = 1

" color scheme
colorscheme nord

" highlight the 81st column
set colorcolumn=+1

" lightline (https://github.com/itchyny/lightline.vim)
if filereadable(expand('~/.config/nvim/lightline.vim'))
  source ~/.config/nvim/lightline.vim
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   Mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" use comma as the leader shortcut
let mapleader = ","

" remove white space turds from the ends of lines
noremap <Leader>w :FixWhitespace<cr>

" break a comma-delimited list onto new lines
vmap <Leader>; :s/,/,\r/g<cr>

" rerun previous :command
noremap <Leader>' @:

" switch between the last two files
nnoremap <leader>. <c-^>

" sort selection
noremap <Leader>st :sort<cr>

" generate ctags
noremap <Leader>ct :!ctags -R .<cr><cr>

" reload ~/.vimrc
noremap <Leader>rc :source ~/.config/nvim/init.vim<cr>

" jump to next in quickfix window
map <C-y> :cnext<CR>

" jump to previous in quickfix window
map <C-u> :cprevious<CR>

" close quickfix window
nnoremap <leader>q :cclose<CR>

" underline a line with hyphens (<h2> in Markdown documents)
noremap <Leader>- yypVr-

" underline a line with equals (<h1> in Markdown documents)
noremap <Leader>= yypVr=

" clear latest search pattern
nnore <esc><esc> :let @/ = ""<cr>

" just use vim key bindings
nnoremap <Left> :echoe "use h"<CR>
nnoremap <Right> :echoe "use l"<CR>
nnoremap <Up> :echoe "use k"<CR>
nnoremap <Down> :echoe "use j"<CR>

" hack to fix C-h problem!!!
if has('nvim')
  nmap <BS> <C-W>h
  nmap <bs> :<c-u>TmuxNavigateLeft<cr>
endif

" enter automatically into the file's directory
autocmd BufEnter * silent! lcd %:p:h


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                Plugin Helpers
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Fugitive (https://github.com/tpope/vim-fugitive)
noremap <Leader>gs :Gstatus<cr>
noremap <Leader>gc :Gcommit<cr>
noremap <Leader>ga :Gwrite<cr>
noremap <Leader>gl :Glog<cr>
noremap <Leader>gd :Gdiff<cr>
noremap <Leader>gb :Gblame<cr>

" NERDTree (https://github.com/scrooloose/nerdtree)
let NERDTreeWinPos='left'
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.pyc$', '\.DS_Store$']
noremap <leader>k :NERDTreeToggle<cr>
noremap <leader>nf :NERDTreeFind<cr>

" EasyMotion (https://github.com/easymotion/vim-easymotion)
nmap <space> <Plug>(easymotion-s)

" CtrlP (https://github.com/ctrlpvim/ctrlp.vim)
let g:ctrlp_dotfiles=1
if executable('rg')
  set grepprg=rg\ --color=never
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
  let g:ctrlp_use_caching = 0
endif

" Neomake (https://github.com/neomake/neomake)
autocmd! BufWritePost * Neomake
let g:neomake_ruby_enabled_makers = ['rubocop']
" let g:neomake_ruby_rubocop_exe = 'rubocop -c ' . $PWD . '/.rubocop.yml'

let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_javascript_eslint_exe = $PWD .'/client/node_modules/.bin/eslint'

" Deoplete (https://github.com/Shougo/deoplete.nvim)
let g:deoplete#enable_at_startup = 1
imap <expr><TAB> pumvisible() ? "\<C-n>" : neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
imap <expr><CR> pumvisible() && neosnippet#expandable() ? "\<Plug>(neosnippet_expand)" : "\<CR>"

" Gists (https://github.com/mattn/gist-vim)
let g:gist_post_private = 1

" vim-run-interactive (https://github.com/christoomey/vim-run-interactive)
nnoremap <Leader>ri :RunInInteractiveShell<space>

" Tagbar (https://github.com/majutsushi/tagbar)
noremap <c-m> :TagbarToggle<cr>

" vim-go (https://github.com/fatih/vim-go)
let g:go_fmt_command = "goimports"
let g:go_list_type = "quickfix"
let g:go_autodetect_gopath = 1

let g:go_highlight_types = 1
let g:go_highlight_structs = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_build_constraints = 1

au FileType go nmap <C-g> :GoDeclsDir<cr>
au FileType imap <C-g> <esc>:<C-u>GoDeclsDir<cr>

au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>d <Plug>(go-doc)
au FileType go nmap <leader>c <Plug>(go-coverage-toggle)
au FileType go nmap <leader>i <Plug>(go-info)
au FileType go nmap <leader>l <Plug>(go-metalinter)
au FileType go nmap <leader>v <Plug>(go-def-vertical)
au FileType go nmap <leader>a :GoAddTags<CR>

au Filetype go command! -bang GA call go#alternate#Switch(<bang>0, 'edit')
au Filetype go command! -bang GAV call go#alternate#Switch(<bang>0, 'vsplit')
au Filetype go command! -bang GAS call go#alternate#Switch(<bang>0, 'split')
au Filetype go command! -bang GAT call go#alternate#Switch(<bang>0, 'tabe')
